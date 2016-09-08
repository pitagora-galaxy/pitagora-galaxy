#!/bin/sh
# chkconfig: 2345 99 99
# description: autorun galaxy

user=ubuntu
galaxy_run=/home/ubuntu/galaxy/run.sh

do_start(){
  su - $user -c "$galaxy_run --daemon"
  return 0
}

do_stop(){
  su - $user -c "$galaxy_run --stop"
  return 0
}

case "$1" in
  start)
    do_start
    ;;
  stop)
    do_stop
    ;;
  restart)
    do_stop
    do_start
    ;;
  *)
    echo "Usage: $0 {start|stop|restart}"
    RETVAL=1
esac

exit $RETVAL
