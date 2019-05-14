create database wine_climate_db;

/*
if needed, code to drop database:
drop database wine_climate_db;
*/

use wine_climate_db;

SHOW VARIABLES LIKE 'character_set%';

create table wines (
	id int primary key,
    country varchar(50),
    designation varchar(100),
    score int,
    price float,
    variety varchar(50)
);

ALTER TABLE wines CONVERT TO CHARACTER SET latin1;

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

UPDATE wines SET country = 'United States' WHERE country = 'US';

select * from country_climates;

select * from wines;

select w.country, designation, score, variety, c.climate
from wines as w
join country_climates as c
on (w.country = c.country)
group by w.country;

select w.country, avg(score), avg(price), c.climate
from wines as w
join country_climates as c
on (w.country = c.country)
group by w.country
order by avg(score) desc;