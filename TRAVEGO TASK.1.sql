-- 1.	(Easy) Creating the schema and required tables using sql script or using MySQL workbench UI
-- a.	Create a schema named Travego. 

CREATE DATABASE TRAVEGO;
USE TRAVEGO;

-- b.	Create the tables mentioned above with the mentioned column names. 

CREATE TABLE PASSENGER
(
PASSENGER_ID INT,
PASSENGER_NAME VARCHAR(20),
CATEGORY VARCHAR(20),
GENDER VARCHAR(20),
BOARDING_CITY VARCHAR(20),
DESTINATION_CITY VARCHAR(20),
DISTANCE INT,
BUS_TYPE VARCHAR(20)
);
DESCRIBE PASSENGER;

-- c.	Insert the data in the newly created tables using sql script or using MySQL UI. 

INSERT INTO PASSENGER (PASSENGER_ID,PASSENGER_NAME,CATEGORY,GENDER,BOARDING_CITY,DESTINATION_CITY,DISTANCE,BUS_TYPE)
VALUES (1,'SEJAL','AC','F','BENGALURU','CHENNAI',350,'SLEEPER'),
(2,'ANMOL','NON-AC','M','MUMBAI','HYDERABAD',700,'SITTING'),
(3,'PALLAVI','AC','F','PANAJI','BENGALURU',600,'SLEEPER'),
(4,'KHUSBOO','AC','F','CHENNAI','MUMBAI',1500,'SLEEPER'),
(5,'UDIT','NON-AC','M','TRIVANDRUM','PANAJI',1000,'SLEEPER'),
(6,'ANKUR','AC','M','NAGPUR','HYDERABAD',500,'SITTING'),
(7,'HEMANT','NON-AC','M','PANAJI','MUMBAI',700,'SLEEPER'),
(8,'MANISH','NON-AC','M','HYDERABAD','BENGALURU',500,'SITTING'),
(9,'PIYUSH','AC','M','PUNE','NAGPUR',700,'SITTING');
SELECT*FROM PASSENGER;
ALTER TABLE passenger
ADD PRIMARY KEY (PASSENGER_ID);
DESCRIBE passenger;
CREATE TABLE PRICE
(
ID INT NOT NULL auto_increment,
BUS_TYPE VARCHAR(20),
DISTANCE INT,
PRICE INT,
PRIMARY KEY(ID)
);
SELECT* FROM PRICE;
DESCRIBE PRICE;
INSERT INTO PRICE(DISTANCE,PRICE)
VALUES(350,770),
(500,1100),
(600,1320),
(700,1540),
(1000,2200),
(1200,2640),
(1500,2700),
(500,620),
(600,744),
(700,868),
(1000,1240),
(1200,1488),
(1500,1860);
SELECT* FROM PRICE;
UPDATE PRICE
SET BUS_TYPE="SLEEPER"
WHERE ID IN (1,2,3,4,5,6,7);
UPDATE PRICE
SET BUS_TYPE="SITTING"
WHERE ID IN (8,9,10,11,12,13);

SELECT * FROM PASSENGER;
SELECT * FROM PRICE;
