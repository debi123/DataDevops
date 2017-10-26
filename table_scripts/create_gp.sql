CREATE schema trial;
CREATE TABLE trial.weather (city int, name varchar(10)) DISTRIBUTED BY (city);
insert into trial.weather (city,name) values (1,'aaa');
insert into trial.weather (city,name) values (2,'a1');
