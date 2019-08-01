#!/bin/bash
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -P${MYSQLC_MYSQLD_PORT} -e "change master to master_host='127.0.0.1', master_port=3306, master_user='root', master_password="${MYSQL_ROOT_PASSWORD}";start slave;"
