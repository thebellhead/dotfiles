#!/bin/bash

wifi_sent=$(iwgetid)

wifi_arr=($wifi_sent)
wifi_ssid=${wifi_arr[1]#*SSID:\"}
wifi_clean=${wifi_ssid%\"*}

if [ -z "$wifi_sent" ]; then
	wifi_clean="No WiFi"
fi

echo "WIF: [ $wifi_clean ]"
