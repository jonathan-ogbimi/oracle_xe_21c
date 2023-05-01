alter session set container=xepdb1;
truncate table sys.scheduler$_job_output;
ANALYZE TABLE sys.scheduler$_job_output DELETE STATISTICS;
ALTER SESSION SET CONTAINER=cdb$root;
alter table sys.scheduler$_job_output shrink space cascade;
exit;
