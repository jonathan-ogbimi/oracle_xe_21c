export ORACLE_HOME=/opt/oracle/product/18c/dbhomeXE
export ORACLE_SID=XE
echo 'Reclaiming space for Container DB'
# compute available space to resize
/opt/oracle/sqlcl/bin/sql sys/pCash371_@xe as sysdba @/home/oracle/sql/compute_reclaimable_space.sql
# add exit to the genarated sql code
echo 'exit' >> /home/oracle/sql/reclaim_space.sql
# run the db resize script to reclaim space
/opt/oracle/sqlcl/bin/sql sys/pCash371_@xe as sysdba @/home/oracle/sql/reclaim_space.sql 
echo 'Reclaiming space for pluggable database'
# compute available space to resize
/opt/oracle/sqlcl/bin/sql sys/pCash371_@xepdb1 as sysdba @/home/oracle/sql/compute_reclaimable_space.sql
# add exit to the genarated sql code
echo 'exit' >> /home/oracle/sql/reclaim_space.sql
# run the db resize script to reclaim space
/opt/oracle/sqlcl/bin/sql sys/pCash371_@xepdb1 as sysdba @/home/oracle/sql/reclaim_space.sql 


