# crontab -e
# 0 0 * * * sh ~/home/04.sh

#!/bin/bash

if [ -e "/etc/crontab" ]; then
	if [ "$(md5sum /etc/crontab | cut -d ' ' -f 1)" != "$(md5sum /etc/cronbackup | cut -d ' ' -f 1)" ]; then
		mail -S "Your crontab file has been changed" root
	fi
fi
