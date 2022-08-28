CREATE DATABASE xworkz;
CREATE TABLE games(id int,name varchar(20));
SELECT games;
INSERT INTO games values(1,'Chess');
INSERT INTO games values(2,'Badminton');
INSERT INTO games values(3,'Carrom');
INSERT INTO games values(4,'Cricket');
INSERT INTO games values(5,'Tennis');
SELECT * FROM games;
DELETE FROM games WHERE id in(2,3,4,5); 









