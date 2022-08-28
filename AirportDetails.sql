USE xworkz;
CREATE TABLE AirportDetails(id int, nameOfFlight varChar(30), passengerName varChar(30),terminalNo int,
totalNoOfLuggage int,noOfCarryOnBags int ,weightOfCarryOnBags int,noOfCheckedBags int,weightOfCheckedBags int,
seatNo int,bookedAt varChar(30),bookingAgent varChar(30),bookingAmount int,originPlace varChar(30),
destination varChar(30),flightDuration int,dateOfJourney date,timeOfTakeOff time,returnJourneyDate date,
classSelected varChar(10));
SELECT AirportDetails;
INSERT INTO AirportDetails Values(1,'IndiGo','Vatsala',2,2,1,10,2,1,10,'xyz booking centre','xyz',3500,'Gulbarga',
'Bangalore',2,'2022-10-12','8:50:00','2022-10-19','Economy','2022-10-10');
INSERT INTO AirportDetails Values(2,'Air India','Vandana',2,2,1,12,2,1,10,'xyz booking centre','xyz',3500,'Gulbarga',
'Bangalore',2,'2022-10-12','8:50:00','2022-10-19','Economy');
INSERT INTO AirportDetails Values(3,'SpiceJet','Omkar',2,2,1,14,2,1,10,'xyz booking centre','xyz',3500,'Gulbarga',
'Bangalore',2,'2022-10-12','8:50:00','2022-10-19','Business');
INSERT INTO AirportDetails Values(4,'Go First','Sunita',2,2,1,10,2,1,10,'xyz booking centre','xyz',3500,'Kolkata',
'Bangalore',2,'2022-10-12','8:50:00','2022-10-19','Economy');
INSERT INTO AirportDetails Values(5,'AirAsia India','Sravani',2,2,1,10,2,1,10,'xyz booking centre','xyz',3500,'Mumbai',
'Bangalore',2,'2022-10-12','8:50:00','2022-10-19','Economy');
INSERT INTO AirportDetails Values(6,'Vistara','Nayana',2,2,1,10,2,1,10,'xyz booking centre','xyz',3500,'Hubli',
'Bangalore',2,'2022-10-12','8:50:00','2022-10-19','Economy');
INSERT INTO AirportDetails Values(7,'IndiGo','Akhila',2,2,1,10,2,1,10,'xyz booking centre','xyz',3500,'Chennai',
'Bangalore',2,'2022-10-12','8:50:00','2022-10-19','Business');
INSERT INTO AirportDetails Values(8,'AirAsia India','Preeti',2,2,1,10,2,1,10,'xyz booking centre','xyz',3500,'Gulbarga',
'Bangalore',2,'2022-10-12','8:50:00','2022-10-19','Economy');
INSERT INTO AirportDetails Values(9,'SpiceJet','Geeta',2,2,1,10,2,1,10,'xyz booking centre','xyz',8500,'Delhi',
'Bangalore',2,'2022-10-12','8:50:00','2022-10-19','Business');
INSERT INTO AirportDetails Values(10,'IndiGo','Manjula',2,2,1,10,2,1,10,'xyz booking centre','xyz',5500,'Hyderabad',
'Bangalore',2,'2022-10-12','8:50:00','2022-10-19','Economy');

ALTER TABLE AirportDetails
ADD BoardingDate date;

ALTER TABLE AirportDetails 
MODIFY COLUMN BoardingDate year;

ALTER TABLE AirportDetails
RENAME COLUMN BoardingDate TO BoardDate;

SET sql_safe_updates=0;
UPDATE AirportDetails SET BoardDate ='2022' WHERE id=4 ;

SELECT * FROM AirportDetails;

ALTER TABLE AirportDetails RENAME TO AirportPassengerDetails;
SELECT * FROM AirportPassengerDetails;
ALTER TABLE AirportPassengerDetails RENAME TO AirportDetails;
SELECT * FROM AirportDetails;

ALTER TABLE AirportDetails
DROP COLUMN BoardDate;

DELETE FROM AirportDetails where id=2;

ALTER TABLE AirportDetails
ADD weightOfBag int;

ALTER TABLE AirportDetails
ADD NoOfLuggage int;

ALTER TABLE AirportDetails
ADD Amount int;

ALTER TABLE AirportDetails
RENAME COLUMN Amount TO TotalBookingAmount;

SELECT * FROM AirportDetails WHERE id=4;
SELECT * FROM AirportDetails WHERE passengerName='Omkar';
SELECT * FROM AirportDetails WHERE nameOfFlight='Indigo';

SELECT * FROM AirportDetails WHERE id=6 AND passengerName='Vatsala';
SELECT * FROM AirportDetails WHERE id=4 AND passengerName='Sunita';
SELECT * FROM AirportDetails WHERE id=4 AND passengerName='Sunita' AND originPlace='Chennai';
SELECT * FROM AirportDetails WHERE id=4 AND passengerName='Sunita' AND originPlace='Kolkata';
SELECT * FROM AirportDetails WHERE id=1 AND passengerName='Vatsala' AND nameOfFlight='indigo' AND classSelected='Economy'; 

SELECT * FROM AirportDetails WHERE id=1 OR classSelected='Business';
SELECT * FROM AirportDetails WHERE id=2 OR passengerName='Nayana' OR passengerName='Vatsala';

SELECT * FROM AirportDetails WHERE id in(1,4,6,9,20);
SELECT * FROM AirportDetails WHERE passengerName in('Vatsala','Omkar','Sunita');

SELECT * FROM AirportDetails WHERE id not in(1,4,6,9,20);

SELECT * FROM AirportDetails;

SELECT * FROM AirportDetails WHERE id BETWEEN 3 and 8;
SELECT * FROM AirportDetails WHERE passengerName BETWEEN 'A' AND 'Z';
