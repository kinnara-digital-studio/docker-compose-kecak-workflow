#!/bin/sh

KECAK_DIR="/usr/local/tomcat"

if [ -z "$JAVA_MEMORY" ]
then
    JAVA_MEMORY=512M
fi

export JAVA_OPTS="-Xmx${JAVA_MEMORY} -Xss512K -Dwflow.home=${KECAK_DIR}/wflow/"

if [ -z "$TOMCAT_DEBUG" ]
then
    export JPDA_ADDRESS=8000
    export JPDA_TRANSPORT=dt_socket
    catalina.sh jpda $*
else
    catalina.sh $*
fi
