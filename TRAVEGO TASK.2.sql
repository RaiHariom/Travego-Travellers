USE TRAVEGO;
-- 2.	(Medium) Perform read operation on the designed table created in the above task using SQL script. 
-- a.	How many females and how many male passengers traveled a minimum distance of 600 KMs?

SELECT GENDER, count(DISTANCE) FROM PASSENGER
WHERE DISTANCE >=600
GROUP BY GENDER;

-- b.	Find the minimum ticket price of a Sleeper Bus. 

SELECT* FROM PRICE;
SELECT min(PRICE) FROM PRICE
WHERE BUS_TYPE = "SLEEPER";

-- c.	Select passenger names whose names start with character 'S' 

SELECT * FROM PASSENGER
WHERE PASSENGER_NAME LIKE "S%";

-- d.	Calculate price charged for each passenger displaying Passenger name, Boarding City, Destination City, Bus_Type, Price in the output

select PASSENGER.PASSENGER_NAME,PASSENGER.BOARDING_CITY,PASSENGER.DESTINATION_CITY,PASSENGER.BUS_TYPE,PRICE.PRICE FROM PASSENGER
LEFT JOIN PRICE
ON PASSENGER.DISTANCE=PRICE.DISTANCE AND PASSENGER.BUS_TYPE=PRICE.BUS_TYPE;

-- e.	What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus?  

select * from passenger;
SELECT passenger.Passenger_name ,price.price FROM PASSENGER
LEFT JOIN PRICE
ON PASSENGER.DISTANCE=PRICE.DISTANCE AND PASSENGER.BUS_TYPE=PRICE.BUS_TYPE
WHERE PRICE.BUS_TYPE="Sitting" AND PRICE.DISTANCE >= 1000;
-- ANS. Their is no passenger who traveled 1000 kms in sitting bus.

-- f.	What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?

select passenger.PASSENGER_NAME,passenger.DESTINATION_CITY as new_boarding,passenger.BOARDING_CITY as new_destination ,price.bus_type,price.price from passenger
inner join price
on passenger.DISTANCE=price.DISTANCE
where PASSENGER_NAME="pallavi";

-- g.	List the distances from the "Passenger" table which are unique (non-repeated distances) in descending order. 

select distance,count(distance) as COUNT from passenger
group by distance 
having COUNT = 1
order by distance desc;


-- h.	Display the passenger name and percentage of distance traveled by that passenger from the total distance traveled by all passengers without using user variables 
select sum(distance)from passenger;
select passenger_name, distance*100/sum(distance) over() as percentage from passenger
order by percentage;


