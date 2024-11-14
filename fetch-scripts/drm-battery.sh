#!/bin/bash

battery_sent=$(acpi)
battery_arr=($battery_sent)
battery_perc=${battery_arr[3]%\%*}
battery_time=${battery_arr[4]:0:5}
battery_status=${battery_arr[2]:0:1}
battery_h=${battery_time%:*}
battery_m=${battery_time#*:}

echo "BAT: [ ${battery_perc}% (${battery_status} ${battery_h}h ${battery_m}m) ]"
