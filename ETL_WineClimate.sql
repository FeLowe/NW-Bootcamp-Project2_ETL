create database wine_climate_db;

use wine_climate_db;

create table wines (
	id int primary key,
    country varchar(50),
    province varchar(50),
    wine int,
    score int,
    variety varchar(50)
);

/* if needed, code to drop table:
drop table wines;
*/

create table country_climates(
	id int primary key,
    country varchar(50),
    province varchar(50),
    climate varchar(50)
);

/* if needed, code to drop table:
drop table country_climates;
*/

select w.country, w.province, wine, score, variety, c.climate
from wines as w
join country_climates as c
on (w.country = c.country and w.province = c.province);