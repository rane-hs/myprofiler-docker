#!/bin/bash

exec /root/myprofiler \
-dump=${MYPROFILER_DUMP:-""} -host=${MYPROFILER_HOST:-"localhost"} -interval=${MYPROFILER_INTERVAL:-1} \
-password=$MYPROFILER_PASSWORD -port=${MYPROFILER_PORT:-3306} -user=${MYPROFILER_USER:-""} 
