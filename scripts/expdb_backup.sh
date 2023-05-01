export ORACLE_HOME=/opt/oracle/product/18c/dbhomeXE
export ORACLE_SID=XE
TIMESTAMP=`date "+%Y-%m-%d-%H-%M-%s"`
DUMP_FILE="pcash-db-$TIMESTAMP.dmp"
LOGFILE="expdp_pcash-$TIMESTAMP.log"
DATA_DIR="/home/oracle/data_dir"
#echo $DUMP_FILE
/opt/oracle/product/18c/dbhomeXE/bin/expdp pcash/pCash371_@xepdb1 schemas=pcash directory=data_dir dumpfile="$DUMP_FILE" logfile="$LOGFILE"
# delete old files older than 2 days
find $DATA_DIR  -type f -name 'pcash-db-*.dmp' -mtime +3 -delete
find $DATA_DIR  -type f -name 'expdp_pcash-*.log' -mtime +3 -delete
#if [ -f "$DUMP_FILE" ]; then
#    echo "Backup successful: $DUMP_FILE exists."
#else 
#    echo "Backup failed: Failed to create $DUMP_FILE"
#fi
