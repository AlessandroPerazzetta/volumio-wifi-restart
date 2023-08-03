# Volumio WiFi Check and Restart

#### Script:
- wifi-restart.sh

#### Crontab: 
```
$ crontab -e
```

**`*/3 * * * * /home/volumio/scripts/wifi-restart.sh >/dev/null 2>&1`**