-- 主
GRANT ALL PRIVILEGES ON *.* TO 'slave' @'172.18.0.2' IDENTIFIED BY 'slave' WITH GRANT OPTION;
FLUSH PRIVILEGES;
SHOW MASTER STATUS;

-- 从
STOP SLAVE;
CHANGE MASTER TO master_host = '172.18.0.3',
master_user = 'slave',
master_password = 'slave',
master_log_file = '';
STOP START;