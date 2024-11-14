#!/bin/bash

ram_table=$(free -m)
ram_arr=($ram_table)
#wifi_ssid=${wifi_arr[1]#*SSID:\"}
#wifi_clean=${wifi_ssid%\"*}

echo "RAM: [ ${ram_arr[8]}/${ram_arr[7]} ]    [DRM]"
