#include "storage/vec/pax_vec_reader.h"

#include "comm/guc.h"
#include "comm/pax_memory.h"
#include "storage/pax_itemptr.h"
#include "storage/vec/pax_vec_adapter.h"
#ifdef VEC_BUILD

namespace pax {

PaxVecReader::PaxVecReader(MicroPartitionReader *reader,
                           std::shared_ptr<VecAdapter> adapter,
                           PaxFilter *filter)
    : reader_(reader),
      adapter_(adapter),
      working_group_(nullptr),
      current_group_index_(0),
      filter_(filter) {
  Assert(reader && adapter);
}

PaxVecReader::~PaxVecReader() { PAX_DELETE(reader_); }

void PaxVecReader::Open(const ReaderOptions &options) {
  auto visimap = options.visibility_bitmap;
  reader_->Open(options);
  if (visimap) {
    adapter_->SetVisibitilyMapInfo(visimap);
  }
}

void PaxVecReader::Close() { reader_->Close(); }

bool PaxVecReader::ReadTuple(TupleTableSlot *slot) {
  auto desc = adapter_->GetRelationTupleDesc();
retry_read_group:
  if (!working_group_) {
    if (current_group_index_ >= reader_->GetGroupNums()) {
      return false;
    }
    auto group_index = current_group_index_++;
    auto info = reader_->GetGroupStatsInfo(group_index);
    if (filter_ &&
        !filter_->TestScan(*info, desc, PaxFilterStatisticsKind::kGroup)) {
      goto retry_read_group;
    }

    working_group_ = reader_->ReadGroup(group_index);

    adapter_->SetDataSource(working_group_->GetAllColumns(),
                            working_group_->GetRowOffset());
  }

  auto flush_nums_of_rows = adapter_->AppendToVecBuffer();
  if (flush_nums_of_rows == -1) {
    PAX_DELETE(working_group_);
    working_group_ = nullptr;
    goto retry_read_group;
  }

  if (flush_nums_of_rows == 0) {
    goto retry_read_group;
  }
  
  adapter_->FlushVecBuffer(slot);

  return true;
}

bool PaxVecReader::GetTuple(TupleTableSlot *slot, size_t row_index) {
  CBDB_RAISE(cbdb::CException::ExType::kExTypeLogicError);
}

size_t PaxVecReader::GetGroupNums() {
  CBDB_RAISE(cbdb::CException::ExType::kExTypeLogicError);
}

std::unique_ptr<ColumnStatsProvider> PaxVecReader::GetGroupStatsInfo(
    size_t group_index) {
  CBDB_RAISE(cbdb::CException::ExType::kExTypeLogicError);
  return nullptr;
}

MicroPartitionReader::Group *PaxVecReader::ReadGroup(size_t index) {
  CBDB_RAISE(cbdb::CException::ExType::kExTypeLogicError);
}

};  // namespace pax

#endif  // VEC_BUILD