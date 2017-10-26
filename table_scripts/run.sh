#!/bin/sh

ls

cp customers.sql /home
chmod 777 customers.sql

cd /home
mkdir postgres
chmod 777 postgres

cd /usr/local
mkdir postgres
chmod 777  postgres
chown postgres postgres


##cd /usr/lib/postgresql/10/bin/
su - postgres -c '/usr/lib/postgresql/10/bin/initdb -D /usr/local/postgres'

su - postgres -c '/usr/lib/postgresql/10/bin/pg_ctl start -D /usr/local/postgres -l serverlog'

##su - postgres -c '/usr/lib/postgresql/10/bin/psql -c "CREATE schema trial" '

##su - postgres -c '/usr/lib/postgresql/10/bin/psql -c "CREATE TABLE trial.weather (city integer, name integer)" '

##su - postgres -c '/usr/lib/postgresql/10/bin/psql -c "insert into trial.weather (city,name) values (1,121) " '
# WHENEVER SQLERROR EXIT SQL.SQLCODE
su - postgres -c '/usr/lib/postgresql/10/bin/psql -a -f "/home/customers.sql"' 
err = $?
echo $err

# if [ "$?" = "0" ]; then
# 	rm *
# else
#   cp /home/log ../gpdb-unit-test-output
# 	echo "error in sql file " 1>&2
# 	exit 1
# fi

#su - postgres -c '/usr/lib/postgresql/10/bin/psql -c "select * from trial.weather" '

exit;
