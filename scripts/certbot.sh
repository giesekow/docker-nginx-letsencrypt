#!/bin/sh

email="--register-unsafely-without-email"

if [[ ! -z "$LE_EMAIL" ]]
then
	email="--email $LE_EMAIL"
fi

certbot --nginx --non-interactive --agree-tos --expand --redirect $email $@
