#! /bin/sh
ssid=$(/sbin/iwgetid --raw)
if [ -z "$ssid" ]
then
    echo "Wifi is down, reconnecting..."
    /sbin/ifconfig wlan0 down
    sleep 5
    systemctl restart wireless
    /volumio/app/plugins/system_controller/volumio_command_line_client/volumio.sh play
fi
echo "wifi-check done"