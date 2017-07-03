STOP SLAVE;
CHANGE MASTER TO MASTER_HOST='192.168.56.92', master_user='replica', 
master_password='PERCrepl2017_', 
{% if mysql_gtid_mode %}
master_auto_position=1;
{% else %}
master_log_file='mysql-bin.000001', master_log_pos=4;
{% endif %}
START SLAVE;

