create database wine_climate_db;

use wine_climate_db;

create table wines (
	id int primary key,
    Country varchar(50),
    Wine int,
    Score int,
    Variety varchar(50)
);

create table country_climates(
	id int primary key,
    Country varchar(50),
    Climate varchar(50)
);