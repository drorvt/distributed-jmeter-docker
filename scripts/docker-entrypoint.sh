#!/bin/bash
set -e

case $1 in
    master)
        tail -f /dev/null
        ;;
    server)
        $JMETER_HOME/bin/jmeter-server \
            -Dserver.rmi.localport=50000 \
            -Dserver_port=1099
            -Djava.net.preferIPv6Addresses=true
        ;;
    *)
        echo "Sorry, this option doesn't exist!"
        ;;
esac

exec "$@"
