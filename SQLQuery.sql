CREATE TABLE temp_tab
(region nvarchar (50) NOT NULL)


ALTER TABLE temp_tab
ADD  id int IDENTITY(1,1) PRIMARY KEY;

Insert into temp_tab (region)
values ('Europe'), ('Europe'), ('South America'), ('Central America'), ('North America'), ('Europe'), ('Asia'), ('Oceania'), ('North America'), ('Europe'), ('North America'), ('North America'), ('Europe'), ('South America'), ('Europe'), ('Asia'), ('Asia'), ('Europe'), ('Central America'), ('North America'), ('Africa'), ('Asia'), ('Africa'), ('Europe'), ('Asia'), ('Asia'), ('North America'), ('Europe'),('Asia'),('Africa'),('Europe'),('Asia'),('South America'),
('Europe'),
('Asia'),
('Asia'),
('Asia'),
('Australian'),
('Africa'),
('Europe'),
('Asia'),
('Asia'),
('Africa'),
('North America'),
('Asia'),
('Europe'),
('South America'),
('South America'),
('Europe'),
('Asia'),
('Asia'),
('North America'),
('North America'),
('Asia'),
('Europe'),
('Asia')


/* ADDING COLUMN REGION TO MAIN TABLE*/

ALTER TABLE airline_safety
ADD region nvarchar (50);
ALTER TABLE airline_safety
ADD  id int IDENTITY(1,1) PRIMARY KEY;



UPDATE airline_safety 
    SET region = (
        SELECT region
        FROM temp_tab
        WHERE temp_tab.id = airline_safety.id
    );


/* ALTERING TYPE of data */

Alter table airline_safety alter column fatalities_00_14 int
Alter table airline_safety alter column fatalities_85_99 int
Alter table airline_safety alter column fatal_accidents_85_99 int
Alter table airline_safety alter column fatal_accidents_00_14 int
Alter table airline_safety alter column incidents_00_14 int