#!/bin/sh
#debarati

psql -U gpadmin -h 10.63.33.203 gpdev -f unit_test.sql -o output.txt
