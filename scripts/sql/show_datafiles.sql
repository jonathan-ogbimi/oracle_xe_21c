alter session set container=xepdb1;
select file#,name, to_char(bytes / 1024/1024/1024, '99,990.0') || 'GB' datafile_size from v$datafile;
