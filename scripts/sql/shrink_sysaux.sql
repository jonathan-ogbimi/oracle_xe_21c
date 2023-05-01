alter session set container=xepdb1;
select 'alter table '||segment_name||'  move tablespace SYSAUX;' from dba_segments where tablespace_name = 'SYSAUX'
and segment_name like '%OPT%' and segment_type='TABLE';

