#!/bin/bash
# do something before mysql start

# touch error.log
[ ! -f /var/log/mysql/error.log ] && touch /var/log/mysql/error.log
chmod 777 /var/log/mysql/error.log

# define server_id and anyother cluster configuration
if [ ${MYSQL_ROLE} == "master" ];then
   server_id=${HOSTNAME#*-}
   MYSQLC_MYSQLD_SERVER_ID=`expr $server_id + 1`
   export MYSQLC_MYSQLD_SERVER_ID
   export MYSQLC_MYSQLD_binlog-ignore-db=mysql
   export MYSQLC_MYSQLD_log-bin=mysql-bin
else 
   server_id=${HOSTNAME#*-}
   MYSQLC_MYSQLD_SERVER_ID=`expr $server_id + 2`
   export MYSQLC_MYSQLD_SERVER_ID
   export MYSQLC_MYSQLD_replicate-ignore-db=mysql
   export MYSQLC_MYSQLD_log-bin=mysql-bin
fi

## read env and create mysql config file
/usr/local/bin/env2file create --format mysql --path /etc/mysql/conf.d/custom.cnf
# start mysql
exec /usr/local/bin/docker-entrypoint.sh "$@"
