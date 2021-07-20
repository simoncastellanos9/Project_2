-- Create tables for raw data to be loaded into
CREATE TABLE weather (
	id serial PRIMARY KEY,
	"DATE" DATE,
	"STATION" VARCHAR(30),
	"NAME" VARCHAR(75),
	"TMAX" FLOAT,
	"TMIN" FLOAT,
	"TOBS" FLOAT
);
CREATE TABLE wti (
	id serial PRIMARY KEY,
	"DATE" DATE,
	"Price" FLOAT
);
CREATE TABLE kwh (
	id serial PRIMARY KEY,
	"DATE" DATE,
	"Cost_KWH" FLOAT
);


--Join tables
SELECT 
	weather.id, weather."DATE", weather."STATION", weather."NAME", weather."TMAX", weather."TMIN",weather."TOBS",kwh."Cost_KWH",wti."Price"
FROM weather
INNER JOIN kwh ON weather.id = kwh.id
INNER JOIN wti ON weather.id = wti.id
ORDER BY weather."DATE";