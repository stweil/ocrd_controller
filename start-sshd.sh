#! /bin/bash
echo "$KEYS" >> /root/.ssh/authorized_keys
touch /root/.hushlogin
set > /root/.ssh/environment
echo "cd /data" >> /root/.ssh/rc
/usr/sbin/sshd -D -e
