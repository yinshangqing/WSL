### CentOS 更新阿里源

#### 1、固定IP


```bash
cat /etc/sysconfig/network-scripts/ifcfg-ens32
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=static
DEFROUTE=``yes
IPV4_FAILURE_FATAL=no
IPV6INIT=``yes
IPV6_AUTOCONF=``yes
IPV6_DEFROUTE=``yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=ens32
UUID=066b4926-b40c-4c28-a5b4-2310d2b96613
DEVICE=ens32
ONBOOT=``yes
IPADDR=192.168.1.200
NETMASK=255.255.255.0
GATEWAY=192.168.1.254
DNS1=223.5.5.5
PREFIX=24
```

nmcli c reload（centOS 8）

#### 2、更新源的步骤

##### 第一步：备份你的原镜像文件，以免出错后可以恢复。

```bash
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
```

##### 第二步：更新repo

```bash
CentOS 5
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-5.repo

CentOS 6
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-6.repo

CentOS 7
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

CentOS 8
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-8.repo
```

更改CentOS-Media.repo使其为不生效

```bash
vim /etc/yum.repos.d/CentOS-Media.repo

enabled=0
```

##### 第三步：更新源

```bash
yum clean all && yum makecache
yum update -y
```