alter session set container=xepdb1;
spool /home/oracle/sql/execute_resize_datafile.sql
with query as (
    select /*+ NO_MERGE MATERIALIZE */ 
        file_id, 
        tablespace_name,
        max(block_id + blocks) highblock
    from 
        dba_extents
    group by 
        file_id, tablespace_name
)
select 
    'alter database datafile '|| q.file_id || ' resize ' || ceil ((q.highblock * t.block_size + t.block_size)/1024)  || 'K;' "--cmd"
from 
    query q,
    dba_tablespaces t
where
    q.tablespace_name = t.tablespace_name;
exit;
