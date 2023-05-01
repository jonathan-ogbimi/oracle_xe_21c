export ORACLE_HOME=/opt/oracle/product/18c/dbhomeXE
export ORACLE_PASSWORD='pCash371_';
/opt/oracle/product/18c/dbhomeXE/bin/sqlplus sys/${ORACLE_PASSWORD}@xepdb1 as sysdba @/home/oracle/sql/trim_database.sql
echo 'exit' >> /home/oracle/sql/execute_resize_datafile.sql
/opt/oracle/product/18c/dbhomeXE/bin/sqlplus sys/${ORACLE_PASSWORD}@xepdb1 as sysdba @/home/oracle/sql/execute_resize_datafile.sql

