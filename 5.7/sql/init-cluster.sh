#!/bin/bash
[[ $DEBUG ]] && set -x 
while true 
do
# start slave 
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -P${MYSQLC_MYSQLD_PORT} -e "change master to master_host='127.0.0.1', master_port=3306, master_user='root', master_password='${MYSQL_ROOT_PASSWORD}';start slave;"
# check it
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -P${MYSQLC_MYSQLD_PORT} -e "show slave status\G;" | grep "Slave_IO_Running: Yes"
if [ $? == 0 ];then    
    break
fi
echo "Waiting master DB init··· retry in 3 seconds" 
sleep 3
done


