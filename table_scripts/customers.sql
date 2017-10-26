-- Table: customers

-- DROP TABLE customers;

--CREATE TABLE my_first_table (first_column text,second_column integer);
--insert into my_first_table (first_column,second_column) values ('emc',121);
--select count(*) from my_first_table;

CREATE schema trial_gp;
CREATE TABLE trial_gp.weather (city integer, name varchar(10));
insert into trial_gp.weather (city,name) values (1,'aaa');
insert into trial_gp.weather (city,name) values (2,'a1');
