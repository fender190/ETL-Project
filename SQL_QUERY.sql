CREATE TABLE facilities_info(
	SPDES_Permit VARCHAR(20) NOT NULL PRIMARY KEY,
	Zip_Code INTEGER,
	Facility_name VARCHAR(120) NOT NULL,
	plant_type VARCHAR(30) NOT NULL,
	Ground_Surface VARCHAR(30),
	Avg_DH_Flow FLOAT
);

CREATE TABLE locations(
	Zip_Code INTEGER,
	SPDES_Permit VARCHAR(20) NOT NULL PRIMARY KEY,
	Street_address VARCHAR(240) NOT NULL,
	City VARCHAR(30) NOT NULL,
	State VARCHAR(30) NOT NULL,
	Country VARCHAR(30) NOT NULL,
	Latitude FLOAT, Longitude FLOAT,
	FOREIGN KEY (SPDES_Permit) REFERENCES facilities_info(SPDES_Permit)
);

CREATE TABLE wastewater(
	SPDES_Permit VARCHAR(20) NOT NULL,	
	County VARCHAR(20),	
	Receiving_Waterbody VARCHAR(30),
	Drainage_Basin INTEGER,	
	Stream_Class VARCHAR(10),	
	Year_Built DATE,	
	Year_Updated DATE,	
	Plant_Class	VARCHAR (10),
	Population_Served INTEGER,
	FOREIGN KEY (SPDES_Permit) REFERENCES locations(SPDES_Permit)
);

SELECT *
FROM facilities_info;