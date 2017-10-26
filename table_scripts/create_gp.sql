CREATE schema trial_gp;
CREATE TABLE trial_gp.weather (city int, name varchar(10)) DISTRIBUTED BY (city);
insert into trial_gp.weather (city,name) values (1,'aaa');
insert into trial_gp.weather (city,name) values (2,'a1');
