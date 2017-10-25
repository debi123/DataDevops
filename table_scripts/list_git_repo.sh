#!/bin/bash
ls -l ./gpdb-unit-test/table_scripts
echo "Listed source directory structure"
cp ./gpdb-unit-test/table_scripts/*.sql ./gpdb-unit-test-output
cd ./gpdb-unit-test-output
ls -l ../gpdb-unit-test-output
