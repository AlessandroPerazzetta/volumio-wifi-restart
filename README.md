# Volumio WiFi Check and Restart

#### Script:
- wifi-restart.sh

#### Crontab: 
```
$ crontab -e
```

### Restart wifi only:

**`*/3 * * * * /home/volumio/scripts/wifi-restart.sh >/dev/null 2>&1`**

### Restart wifi and play:

**`*/3 * * * * /home/volumio/scripts/wifi-restart.sh play>/dev/null 2>&1`**