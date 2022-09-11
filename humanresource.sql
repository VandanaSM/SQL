CREATE table humanresource(id int,nationalId int,employeeName varChar(45),organisationLevel int,jobTitle varchar(20),
birthDate date,maritalStatus varChar(10),gender varChar(10) ,hireDate date);
use xworkz;
use humanresource;
SELECT humanresource;
INSERT INTO humanresource VALUES(1,100011,'Krishna',1,'Vice President','1975/10/10','M','M','2002/09/10');
INSERT INTO humanresource VALUES(2,100012,'Anand',2,'Senior Manager','1985/08/10','M','M','2014/04/08');
INSERT INTO humanresource VALUES(3,100013,'Sunidhi',3,'Manager','1975/10/10','M','M','2002/09/10');
INSERT INTO humanresource VALUES(4,100014,'Sravani',4,'Sr.Developer','1995/03/10','S','F','2019/08/10');
INSERT INTO humanresource VALUES(5,100015,'Nayana',4,'Developer','1994/06/20','S','F','2019/10/18');
INSERT INTO humanresource VALUES(6,100016,'Sunita',5,'Developer','1996/08/08','M','F','2019/09/17');
INSERT INTO humanresource VALUES(7,100017,'Omkar',4,'Developer','1998/02/07','S','M','2019/09/25');
INSERT INTO humanresource VALUES(8,100018,'Jayanth',5,'Jr.Developer','1996/05/04','S','M','2020/09/10');
INSERT INTO humanresource VALUES(9,100019,'Sumit',6,'Jr.Developer','1994/02/01','M','M','2020/10/20');

ALTER TABLE humanresource 
ADD salary int;

ALTER TABLE humanresource 
RENAME column hireDate TO hiringDate;

UPDATE humanresource SET organisationLevel=3 WHERE id=4;
UPDATE humanresource SET maritalStatus='M' WHERE id=5;

DELETE FROM humanresource WHERE id=3;
SET sql_safe_updates=0;
update humanresource SET salary='30000' where id=9;

SELECT *  FROM humanresource;
SELECT * FROM humanresource WHERE id between 1 and 5 ;
SELECT * FROM humanresource WHERE employeeName between 'A' AND 'I';
SELECT * FROM humanresource WHERE organisationlevel in('Developer');
SELECT * FROM humanresource WHERE id in(2,8,1,6);

SELECT * FROM humanresource WHERE id=1 OR classSelected='gender';
SELECT * FROM humanresource WHERE id=2 OR passengerName='Nayana' OR passengerName='Vatsala';

SELECT * FROM humanresource WHERE id not in(1,4,6,9,20);
SELECT * FROM humanresource WHERE id=4 AND passengerName='Sunita';

