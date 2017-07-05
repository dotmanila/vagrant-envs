# vagrant-envs

Vagrant + Virtualbox + Ansible

## How To Use

```
./runvg <ENV>
```

ENV should be one of the short environment codes below.

MySQL accounts, almost always defaults to `percona`:`PERCona2017_` and should have root privileges. Always consider these environments insecure - try not to store sensitive information :)

## Available Environments

Please note, each MV is mostly 1G of RAM and 2 virtual CPUs.

- pxc: 3 node Percona XtraDB cluster 5.7 on CentOS 7
- proxysql-pxc: pxc environment behind ProxySQL 1.3.7
- mha: MySQL Master HA environment with dedicated MHA manager node, one master and 2 slaves, Percona Server 5.7, CentOS 7

Some `Vagrantfile` can also be modified for MySQL versions i.e. 5.6 vs 5.7, enabling/disabling GTID.

## Requirements

- Ansible >= 1.9.x
- Virtualbox >= 5.1
- Vagrant >= 2.2.1
- ``vagrant plugin install vagrant-hostmanager``

