/*
 * nodeSequence.c
 *   Routines to handle Sequence node.
 *
 * Portions Copyright (c) 2012 - present, EMC/Cloudberry
 * Portions Copyright (c) 2012-Present VMware, Inc. or its affiliates.
 *
 *
 * IDENTIFICATION
 *	    src/backend/vecexecutor/nodeSequence.c
 *
 * Sequence node contains a list of subplans, which will be processed in the 
 * order of left-to-right. Result tuples from the last subplan will be outputted
 * as the results of the Sequence node.
 *
 * Sequence does not make use of its left and right subtrees, and instead it
 * maintains a list of subplans explicitly.
 */

#include "postgres.h"

#include "vecexecutor/nodeSequence.h"
#include "vecexecutor/executor.h"
#include "miscadmin.h"
#include "vecexecutor/execAmi.h"

SequenceState *
ExecInitVecSequence(Sequence *node, EState *estate, int eflags)
{
	SequenceState *sequenceState;
	VecSequenceState *vsequenceState;
	PlanState  *lastPlanState;

	/* Check for unsupported flags */
	Assert(!(eflags & EXEC_FLAG_MARK));

	/* Sequence should not contain 'qual'. */
	Assert(node->plan.qual == NIL);

    vsequenceState = (VecSequenceState *)palloc0(sizeof(VecSeqScanState));
    sequenceState = (SequenceState *) vsequenceState;
	NodeSetTag(sequenceState, T_SequenceState);
	sequenceState->ps.plan = (Plan *)node;
	sequenceState->ps.state = estate;
	sequenceState->ps.ExecProcNode = ExecVecSequence;

	int numSubplans = list_length(node->subplans);
	Assert(numSubplans >= 1);
	sequenceState->subplans = (PlanState **)palloc0(numSubplans * sizeof(PlanState *));
	sequenceState->numSubplans = numSubplans;
	
	/* Initialize subplans */
	ListCell *lc;
	int no = 0;
	foreach (lc, node->subplans)
	{
		Plan *subplan = (Plan *)lfirst(lc);
		Assert(subplan != NULL);
		Assert(no < numSubplans);
		
		sequenceState->subplans[no] = VecExecInitNode(subplan, estate, eflags);
		no++;
	}

	sequenceState->initState = true;
	
	/* Sequence does not need projection. */
	sequenceState->ps.ps_ProjInfo = NULL;

	/*
	 * Initialize result type. We will pass through the last child slot.
	 */
	lastPlanState = sequenceState->subplans[numSubplans - 1];
	ExecInitResultTupleSlotTL(&sequenceState->ps, &TTSOpsVecTuple);
	sequenceState->ps.resultopsset = true;
	sequenceState->ps.resultops = ExecGetResultSlotOps(lastPlanState,
													   &lastPlanState->resultopsfixed);

	BuildVecPlan((PlanState *)vsequenceState, &vsequenceState->estate);
	return sequenceState;
}

TupleTableSlot *
ExecVecSequence(PlanState *pstate)
{
	VecSequenceState *vnode = (VecSequenceState *)pstate;
	TupleTableSlot *result = ExecuteVecPlan(&vnode->estate);
	return result;
}

void
ExecEndVecSequence(SequenceState *node)
{
	/* shutdown subplans */
	for(int no = 0; no < node->numSubplans; no++)
	{
		Assert(node->subplans[no] != NULL);
		VecExecEndNode(node->subplans[no]);
	}
}

void
ExecReScanSequence(SequenceState *node)
{
	for (int i = 0; i < node->numSubplans; i++)
	{
		PlanState  *subnode = node->subplans[i];

		/*
		 * ExecReScan doesn't know about my subplans, so I have to do
		 * changed-parameter signaling myself.
		 */
		if (node->ps.chgParam != NULL)
		{
			UpdateChangedParamSet(subnode, node->ps.chgParam);
		}

		/*
		 * Always rescan the inputs immediately, to ensure we can pass down
		 * any outer tuple that might be used in index quals.
		 */
		ExecReScan(subnode);
	}

	node->initState = true;
}

void
ExecSquelchVecSequence(SequenceState *node)
{
	for (int i = 0; i < node->numSubplans; i++)
		ExecVecSquelchNode(node->subplans[i]);
}