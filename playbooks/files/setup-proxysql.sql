REPLACE INTO main.mysql_servers (hostname) 
  VALUES ('192.168.56.82'), ('192.168.56.83'), ('192.168.56.84');
REPLACE INTO main.mysql_users (username, password)
  VALUES ('percona', 'percona');
LOAD MYSQL SERVERS TO RUNTIME;
LOAD MYSQL USERS TO RUNTIME;
