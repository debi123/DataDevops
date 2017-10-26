#!/bin/sh
#!/usr/bin/expect -f
##apt-get install ssh



apk update

apk add openssh

apk add sshpass


sshpass -p 'gpadmin' scp -o "StrictHostKeyChecking no" create_gp.sql gpadmin@10.63.33.203:/home/gpadmin/ftp


sshpass -p 'gpadmin' ssh -o "StrictHostKeyChecking no" gpadmin@10.63.33.203 <<!
ls /home/gpadmin/ftp/*
psql -a -f "/home/gpadmin/ftp/create_gp.sql"
!
