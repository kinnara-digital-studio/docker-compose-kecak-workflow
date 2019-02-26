#!/bin/sh

KECAK_DIR="/usr/local/tomcat"

if [ -z "$JAVA_MEMORY" ]
then
    JAVA_MEMORY=512M
fi

export JAVA_OPTS="-Xmx${JAVA_MEMORY} -Dwflow.home=${KECAK_DIR}/wflow/"

catalina.sh $*
