create database wine_climate_db;

/*
if needed, code to drop database:
drop database wine_climate_db;
*/

use wine_climate_db;

SHOW VARIABLES LIKE 'character_set%';
/*
ALTER DATABASE wine_climate_db CHARACTER SET utf8 COLLATE utf8_general_ci;
set global character_set_server = utf8;
*/

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



select w.country, designation, score, variety, c.climate
from wines as w
left join country_climates as c
on (w.country = c.country);



select * from country_climates;

select * from wines;

/*
SELECT DEFAULT_CHARACTER_SET_NAME, DEFAULT_COLLATION_NAME
FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'ETL_WineClimate';
*/

UPDATE wines SET country = 'United States' WHERE country = 'US';
