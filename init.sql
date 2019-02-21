-- 主
GRANT ALL PRIVILEGES ON *.* TO 'slave' @'%' IDENTIFIED BY 'slave' WITH GRANT OPTION;
FLUSH PRIVILEGES;
SHOW MASTER STATUS;

-- 从
STOP SLAVE;
CHANGE MASTER TO master_host = '172.19.0.3',
master_user = 'slave',
master_password = 'slave',
master_log_file = 'xxxx';
START SLAVE;
SHOW SLAVE STATUS;