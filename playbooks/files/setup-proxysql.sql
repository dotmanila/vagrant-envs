REPLACE INTO main.mysql_servers (hostname) 
  VALUES ('192.168.56.82'), ('192.168.56.83'), ('192.168.56.84');
REPLACE INTO main.mysql_users (username, password)
  VALUES ('percona', 'PERCona2017_');
LOAD MYSQL SERVERS TO RUNTIME;
LOAD MYSQL USERS TO RUNTIME;

SAVE MYSQL SERVERS TO DISK;
SAVE MYSQL USERS TO DISK;

UPDATE main.global_variables SET variable_value='proxysql'
  WHERE variable_name=='mysql-monitor_username';
UPDATE main.global_variables SET variable_value='PERCona2017_'
  WHERE variable_name=='mysql-monitor_password';

LOAD MYSQL VARIABLES TO RUNTIME;
SAVE MYSQL VARIABLES TO DISK;