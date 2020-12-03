
#!/bin/bash
# this create zip file for files in /home/pi/apps and overwrite file each time

OF=/home/pi/backups/home_pi-apps_$(date +%Y%m%d).tar.gz
tar -czf $OF /home/pi/apps
echo $OF

#./backup.sh
