#! /bin/sh
cmd=$1
ssid=$(/sbin/iwgetid --raw)
if [ -z "$ssid" ]
then
    echo "Wifi is down, reconnecting..."
    /sbin/ifconfig wlan0 down
    sleep 5
    systemctl restart wireless
    #/volumio/app/plugins/system_controller/volumio_command_line_client/volumio.sh play
    if [ -z "$cmd" ]
    then
        echo "Command is empty"
    else
        echo "Command: $cmd"
        if [ $cmd = "play" ]; then
            /volumio/app/plugins/system_controller/volumio_command_line_client/volumio.sh play
        fi
    fi
fi
echo "wifi-check done"