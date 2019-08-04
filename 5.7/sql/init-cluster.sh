#!/bin/bash
[[ $DEBUG ]] && set -x
# mk mysql slave
sleep 10

mysql -uroot -p${MYSQL_ROOT_PASSWORD} -P${MYSQL_SLAVE_PORT} -e "change master to master_host='127.0.0.1', master_port=3306, master_user='root', master_password='${MYSQL_ROOT_PASSWORD}';DROP USER '${MYSQL_USER}'@'%';start slave;"

while true 
do
# start slave 
sleep 10
# check it
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -P${MYSQL_SLAVE_PORT} -e "show slave status\G;" | grep "Slave_IO_Running: Yes"
if [ $? == 0 ];then    
    break
else 
    mysql -uroot -p${MYSQL_ROOT_PASSWORD} -P${MYSQL_SLAVE_PORT} -e "change master to master_host='127.0.0.1', master_port=3306, master_user='root', master_password='${MYSQL_ROOT_PASSWORD}';DROP USER '${MYSQL_USER}'@'%';start slave;"
fi
echo "Waiting slave DB init··· retry in 3 seconds" 

done


