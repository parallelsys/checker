#!/bin/bash
SERVERIP="IP HERE"
NOTIFYEMAIL="EMAIL HERE"
for i in $SERVERIP
	do
		if [ -f /tmp/down ]; then
			exit 0
			else
				ping -c 5 $i > /dev/null 2>&1
				if [ $? -ne 0 ]; then
					touch /tmp/down
					fi
					fi
					done
					for f in /tmp/down
					do
						if [ -f $f ]
						then
						fuser -s $f
						if [ $? -ne 0 ]
						then
						# Use your favorite mailer here:
						mail -s "Server $SERVERIP is down" "$NOTIFYEMAIL" < /dev/null
					fi
				fi
			done
