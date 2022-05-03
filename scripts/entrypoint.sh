#!/bin/sh

chmod +x issue-certs.sh

if [ "$SSL" = "yes" ] || [ "$SSL" = "true" ]
then
	nginx -g "daemon on;"
	sleep 10
	./issue-certs.sh
	kill -QUIT $( cat /run/nginx.pid )
	sleep 5
	nginx -g "daemon off;"
else
	nginx -g "daemon off;"
fi
