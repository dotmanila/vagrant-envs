GRANT ALL ON *.* TO 'percona'@'192.168.56.%' IDENTIFIED BY 'PERCona2017_';
GRANT ALL ON *.* TO 'percona'@'127.0.0.1' IDENTIFIED BY 'PERCona2017_';
GRANT ALL ON *.* TO 'percona'@'localhost' IDENTIFIED BY 'PERCona2017_';
GRANT PROCESS, REPLICATION CLIENT, SELECT ON  *.* TO 'proxysql'@'192.168.56.%' IDENTIFIED BY 'PERCona2017_'
