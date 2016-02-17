#!/bin/bash
# Network Security Program

BASE=`basename $0`

start(){
        PID=`ps -All | grep -v grep | grep -v "$BASE" | grep netsecure | awk -F" " '{print $4}'`
        if [ "$PID" == "" ]; then
                echo -e "Starting..."
                /usr/local/bin/netsecure -d &
        else
                echo "$0 is already running with pid: $PID"
        fi
}

stop(){
        PID=`ps -All | grep -v grep | grep -v "$BASE" | grep netsecure | awk -F" " '{print $4}'`
        if [ "$PID" == "" ]; then
                echo "$0 is not running"
        else
                echo -e "Stopping..."
                for i in $PID; do
                        kill -9 $i
                done
        fi
}

status(){
        PID=`ps -All | grep -v grep | grep -v "$BASE" | grep netsecure | awk -F" " '{print $4}'`
        if [ "$PID" != "" ]; then
                echo "$0 is running with pid: $PID"
        else
                echo "$0 is not running"
        fi
}

case "$1" in
'start')
                start
                ;;
'stop')
                stop
                ;;
'restart')
                stop && sleep 3 && start
                ;;
'status')
                status
                ;;
*)
                echo "Usage: $0 { start | stop | restart | status }"
                ;;
esac
exit 0
