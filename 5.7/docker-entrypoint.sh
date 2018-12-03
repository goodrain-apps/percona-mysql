#!/bin/bash
# do something before mysql start

# create server_id
HOSTNAME=gr31895c-0
server_id=${HOSTNAME#*-}
MYSQLC_MYSQLD_server_id=`expr $server_id + 1`
export MYSQLC_MYSQLD_server_id

## read env and create mysql config file
/usr/local/bin/env2file create --format mysql --path /etc/mysql/conf.d/custom.cnf
# start mysql
exec /usr/local/bin/docker-entrypoint.sh "$@"
