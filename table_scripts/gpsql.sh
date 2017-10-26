#!/bin/sh
#!/usr/bin/expect -f
##apt-get install ssh

ls

cp create.sql /home
chmod 777 create.sql

apk update

apk add openssh

apk add sshpass

apk add scp

sshpass -p 'gpadmin' scp -o "StrictHostKeyChecking no" create_gp.sql gpadmin@10.63.33.203:/home/gpadmin/ftp


sshpass -p 'gpadmin' ssh -o "StrictHostKeyChecking no" gpadmin@10.63.33.203 <<!
ls /home/gpadmin/ftp/*
psql -a -f "/home/gpadmin/ftp/create_gp.sql"
!
