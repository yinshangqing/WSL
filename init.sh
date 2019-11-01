#!/bin/bash
pn=$(ps aux|grep -v grep|grep sshd|wc -l)
[ -d /var/run/sshd ] || mkdir /var/run/sshd
chmod 744 /var/run/sshd
if [ "${pn}" != "0" ]; then
    pid=$(ps aux|grep -v grep|grep /usr/sbin/sshd|awk '{print $2}')
    kill $pid
fi
/usr/sbin/sshd -D