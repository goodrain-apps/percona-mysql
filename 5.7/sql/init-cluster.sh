#!/bin/bash
while true 
do 
mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} -d${MYSQL_DATABASE} -P${MYSQL_PORT} -e "show tables;" > /dev/null 2&>1
if [ $? == 0 ];then
    mysql -uroot -p${MYSQL_ROOT_PASSWORD} -P${MYSQLC_MYSQLD_PORT} -e "change master to master_host='127.0.0.1', master_port=3306, master_user='root', master_password='${MYSQL_ROOT_PASSWORD}';start slave;"
    break
fi
echo "Waiting master DB init··· retry in 3 seconds" 
sleep 3
done


