create database wine_climate_db;

use wine_climate_db;

create table wines (
	id int primary key,
    Country varchar(50),
    Wine int,
    Score int,
    Variety varchar(50)
);
