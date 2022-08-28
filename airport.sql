CREATE TABLE airport(id int, nameOfFlight varChar(30), passengerName varChar(30),terminalNo int,totalNoOfLuggage int,
noOfCarryOnBags int ,weightOfCarryOnBags int,noOfCheckedBags int,weightOfCheckedBags int,seatNo int,
bookedAt varChar(30),bookingAgent varChar(30),bookingAmount int,originPlace varChar(30),destination varChar(30),
flightDuration int,dateOfJourney date,timeOfTakeOff time,returnJourneyDate date,classSelected varChar(10));
SELECT airport;
INSERT INTO airport values(1,'IndiGo','Vatsala',2,2,1,10,2,1,10,'xyz booking centre','xyz',3500,'Gulbarga','Bangalore',2,'12/10/2022','8:50 AM','19/10/2022','Economy');

SELECT * FROM airport;

