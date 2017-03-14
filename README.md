# vagrant-envs

Vagrant + Virtualbox + Ansible

## How To Use

```
./runvg <ENV>
```

ENV should be one of the short environment codes below.

MySQL accounts, almost always defaults to `percona`:`percona` and should have root privileges. MySQL deployments are not secured by default - try not to store sensitive information :)

## Available Environments

Please note, each MV is mostly 1G of RAM and 2 virtual CPUs.

- pxc: 3 node Percona XtraDB cluster 5.6 on CentOS 7
- proxysql-pxc: pxc environment behind ProxySQL 1.3
- mha: MySQL Master HA environment with dedicated MHA manager node, one master and 2 slaves, Percona Server 5.6, CentOS 7

## Requirements

- Ansible
- Virtualbox
- Vagrant

