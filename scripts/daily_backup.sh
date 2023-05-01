export ORACLE_HOME=/opt/oracle/product/18c/dbhomeXE
export ORACLE_SID=XE
/opt/oracle/sqlcl/bin/sql pcash/pCash371_@xepdb1 @/home/oracle/sql/apex_export.sql > /dev/null
/opt/oracle/product/18c/dbhomeXE/bin/rman target sys/pCash371_@XE cmdfile=/home/oracle/weekly_backup.rman > backup.log 

