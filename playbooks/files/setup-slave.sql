STOP SLAVE;
{% if mysql_gtid_mode %}
CHANGE MASTER TO MASTER_HOST='192.168.56.91', master_user='mharepl', master_password='mharepl', master_auto_position=1;;
{% else %}
CHANGE MASTER TO MASTER_HOST='192.168.56.91', master_user='mharepl', master_password='mharepl', master_log_file='mysql-bin.000001', master_log_pos=4;
{% endif %}
START SLAVE;

