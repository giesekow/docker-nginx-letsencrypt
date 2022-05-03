#!/bin/sh


email="--register-unsafely-without-email"
redirect=""

if [ "$LE_REDIRECT" = "yes" ] || [ "$LE_REDIRECT" = "true" ]
then
	redirect="--redirect"
fi

if [[ ! -z "$LE_EMAIL" ]]
then
	email="--email $LE_EMAIL"
fi

if [[ ! -z "$LE_DOMAINS" ]]
then
	IN=$LE_DOMAINS
	DOMAIN_GROUPS=$(echo $LE_DOMAINS | tr "," "\n")

	for DOMAIN_GROUP in $DOMAIN_GROUPS
	do
		[[ -z "$DOMAIN_GROUP" || "$DOMAIN_GROUP" = "#"* ]] && continue
	    DOMAINS=$(echo $DOMAIN_GROUP | tr " " "\n")
	    domains=""
	    for dm in $DOMAINS
	    do
	    	domains="$domains -d $dm"
	    done
	    [[ -z "$domains" ]] && continue
	    certbot --nginx --non-interactive --agree-tos --expand $redirect $email $domains
	done
fi

