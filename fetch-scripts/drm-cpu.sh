#!/bin/bash

cpu_sent=$(mpstat 2 1 | awk 'END{print 100-$NF"%"}')
cpu_clean=${cpu_sent%,*}

echo "CPU: [ ${cpu_clean} ]"
