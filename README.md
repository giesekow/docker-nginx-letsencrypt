# Docker Nginx Letsencrypt

Supported environment variables

1. `LE_DOMAINS`: a list of domains to issue certificates for separated by `space` or `comma`. Domains separated by space are issued together while comma separated domains are issued individually.
1. `LE_EMAIL`: the email address used by letsencrypt to generate ssl certificates.
2. `LE_REDIRECT`(yes/no): whether to redirect http to https after installation of the certificate.
3. `SSL`: whether you want to issue `ssl` certificates for the domains.

To persist the certificates mount a volume at `/etc/letsencrypt`
Nginx virtual hosts can be mounted at
1. `/etc/nginx/sites-enabled`: support any file name
2. `/etc/nginx/http.d`: supports only files ending with `.conf`
