# * Cleaning log files
#  * Run File As SuperUser
LOG_DIR=/var/log
cd $LOG_DIR
cat /dev/null >messages
cat /dev/null >wtmp
echo "Logs cleaned up."