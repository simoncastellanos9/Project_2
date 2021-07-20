-- drop table weather;
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

SELECT * FROM wti;