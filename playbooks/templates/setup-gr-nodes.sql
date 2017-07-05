CHANGE MASTER TO MASTER_USER='replica', MASTER_PASSWORD='PERCrepl2017_' FOR CHANNEL 'group_replication_recovery';
INSTALL PLUGIN group_replication SONAME 'group_replication.so';
{% if ansible_hostname == 'gr01' %}SET GLOBAL group_replication_bootstrap_group=ON;{% endif %}
START GROUP_REPLICATION;
{% if ansible_hostname == 'gr01' %}SET GLOBAL group_replication_bootstrap_group=OFF;{% endif %}