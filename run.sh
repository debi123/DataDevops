#!/bin/bash

chmod 777

psql --username "$POSTGRES_USER" -c "select table_name from information_schema.tables where table_type = 'BASE TABLE' and table_schema = 'public'"

