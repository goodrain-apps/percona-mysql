#!/bin/bash
# do something before mysql start

# create uuid
psd="/proc/sys/kernel/random/uuid"
str=$(cat $psd)
uuid="server-uuid="${str}
echo "[auto]" > /var/lib/mysql/auto.cnf
echo $uuid >> /var/lib/mysql/auto.cnf

## read env and create mysql config file
/usr/local/bin/env2file create --format mysql --path /etc/mysql/conf.d/custom.cnf
# start mysql
exec /usr/local/bin/docker-entrypoint.sh "$@"
