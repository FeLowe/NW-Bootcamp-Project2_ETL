create database wine_climate_db;

use wine_climate_db;

create table wines (
	id int primary key,
    country varchar(50),
    designation varchar(100),
    score int,
    price float,
    variety varchar(50)
);

/*
if needed, code to drop table:
drop table wines;
*/

create table country_climates(
	id int primary key,
    country varchar(50),
    climate varchar(50)
);

/*
if needed, code to drop table:
drop table country_climates;
*/

select * from country_climates;

select w.country, designation, score, variety, c.climate
from wines as w
join country_climates as c
on (w.country = c.country);