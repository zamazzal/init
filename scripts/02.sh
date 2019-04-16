# crontab -e
# 0 4 * * 0 sh ~/home/02.sh

#!/bin/bash
apt-get update >> /var/log/update_script.log && apt-get upgrade >> /var/log/update_script.log
