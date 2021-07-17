-- Create tables for raw data to be loaded into
CREATE TABLE weather (
	date DATE PRIMARY KEY,
	station VARCHAR(30),
	name VARCHAR(75),
	tmax FLOAT,
	tmin FLOAT,
	tobs FLOAT
);

CREATE TABLE wti (
	date DATE PRIMARY KEY,
	price FLOAT
);

CREATE TABLE KWH (
	date DATE PRIMARY KEY,
	KWH FLOAT
);