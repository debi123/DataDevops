#!/bin/sh

pwd
#cd /opt/hbase/bin
ls -lrt
# cd /home
# java -version
sudo apt-get update
java -version
sudo apt-get install -y default-jre
sudo apt-get install -y default-jdk
# sudo apt-get install default-jre
# sudo apt-get install openjdk-8-jdk
# sudo update-alternatives --config java
/opt/hbase/bin/hbase-daemons.sh start zookeeper
/opt/hbase/bin/start-hbase.sh
# /hbase-1.3.1/bin/start-hbase.sh

#../opt/hbase/bin/start-hbase.sh

#echo "list" | hbase shell > tableListSummary.txt
#if echo -e "list" | hbase shell 2>&1 | grep -q "ERROR:" 2>/dev/null ;then echo "Hbase is not running"; fi
echo -e "list" | hbase shell >>tableListSummary.txt
ls -lrt
echo "error not getting captured" >>tableListSummary.txt
ls -lrt
cat tableListSummary.txt


echo "create 'emp', 'personal data', 'professional data'" | hbase shell >tableCreateSummary.txt
ls -lrt

# cp customers.sql /home
# chmod 777 customers.sql

# cd /home
# mkdir postgres
# chmod 777 postgres

# cd /usr/local
# mkdir postgres
# chmod 777  postgres
# chown postgres postgres

# EXEC SQL WHENEVER SQLERROR STOP
# ##cd /usr/lib/postgresql/10/bin/
# su - postgres -c '/usr/lib/postgresql/10/bin/initdb -D /usr/local/postgres'

# su - postgres -c '/usr/lib/postgresql/10/bin/pg_ctl start -D /usr/local/postgres -l serverlog'

# #su - postgres -c '/usr/lib/postgresql/10/bin/psql -c "CREATE schema trial" '

# ##su - postgres -c '/usr/lib/postgresql/10/bin/psql -c "CREATE TABLE trial.weather (city integer, name integer)" '

# ##su - postgres -c '/usr/lib/postgresql/10/bin/psql -c "insert into trial.weather (city,name) values (1,121) " '
# # WHENEVER SQLERROR EXIT SQL.SQLCODE
# su - postgres -c '/usr/lib/postgresql/10/bin/psql -v "ON_ERROR_STOP=1" -a -f "/home/customers.sql"'
# # <<EOF
# # su - postgres -c '/usr/lib/postgresql/10/bin/psql -a -f "/home/customers.sql"' 
# # -a -f "/home/customers.sql"'
# # EOF

# exit $?
# echo $?


# if [ $? ne 0 ]; then
# echo "psql failed while trying to run this sql script" 1>&2
# exit $?
# fi

# if [ "$?" = "0" ]; then
# 	rm *
# else
#   cp /home/log ../gpdb-unit-test-output
# 	echo "error in sql file " 1>&2
# 	exit 1
# fi

#su - postgres -c '/usr/lib/postgresql/10/bin/psql -c "select * from trial.weather" '

#exit;

echo "sql script successful"
exit 0
