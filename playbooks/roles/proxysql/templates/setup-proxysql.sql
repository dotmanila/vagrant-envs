REPLACE INTO main.mysql_servers (hostname) 
  VALUES ('{{ mysql_cluster_nodes|join("'), ('") }}');
REPLACE INTO main.mysql_users (username, password)
  VALUES ('percona', 'PERCona2017_');
LOAD MYSQL SERVERS TO RUNTIME;
LOAD MYSQL USERS TO RUNTIME;

SAVE MYSQL SERVERS TO DISK;
SAVE MYSQL USERS TO DISK;

UPDATE main.global_variables SET variable_value='monitor'
  WHERE variable_name=='mysql-monitor_username';
UPDATE main.global_variables SET variable_value='PERCona2017_'
  WHERE variable_name=='mysql-monitor_password';

LOAD MYSQL VARIABLES TO RUNTIME;
SAVE MYSQL VARIABLES TO DISK;

{% if mysql_cluster_type == 'grouprepl' %}
INSERT INTO mysql_group_replication_hostgroups (
	writer_hostgroup, backup_writer_hostgroup, reader_hostgroup, 
	offline_hostgroup, active, max_writers, writer_is_also_reader, 
	max_transactions_behind
	) 
VALUES (1, 3, 2, 4, 1, 1, 0, 40);

UPDATE mysql_servers SET hostgroup_id = 3 
WHERE hostname <> '{{ mysql_cluster_nodes[0] }}';

LOAD MYSQL SERVERS TO RUNTIME;
SAVE MYSQL USERS TO DISK;
{% endif %}