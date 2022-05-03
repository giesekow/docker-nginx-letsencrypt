# Docker Nginx Letsencrypt

Supported environment variables

1. `LE_DOMAINS`: a list of domains to issue certificates for separated by `space` or `comma`. Domains separated by space are issued together while comma separated domains are issued individually.
1. `LE_EMAIL`: the email address used by letsencrypt to generate ssl certificates.
2. `LE_REDIRECT`(yes/no): whether to redirect http to https after installation of the certificate.
3. `PROXY_SSL`: whether you want to issue `ssl` certificates for the domains.