-- start_ignore
select sess_id from pg_stat_activity where pg_backend_pid()=pid;
\gset
select pg_sleep(30);
-- end_ignore

\c gpperfmon
select pg_sleep(100);
analyze system_history;
analyze database_history;
analyze diskspace_history;
analyze queries_history;
select count(*) > 0 from system_now;
select count(*) > 0 from database_now;
select count(*) > 0 from diskspace_now;
select count(*) > 0 from system_history;
select count(*) > 0 from database_history;
select count(*) > 0 from diskspace_history;
select status, query_text from queries_history where ssid = :sess_id;