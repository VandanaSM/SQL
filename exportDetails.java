CREATE TABLE exportDetails(id int,orderDate int,orderItems int,shipDate date,shipMode varchar(10), 
boardingDate date,customerName varchar(20),DealerName varchar(10),deliveryAddress varchar(25));

use exportDetails;
SELECT exportDetails;
ALTER TABLE exportDetails RENAME COLUMN boardingDate TO DestinationDate;

ALTER TABLE exportDetails ADD Country varchar(15);
INSERT INTO exportDetails VALUES(1,1001,10,'2022/10/25','First class','2022/11/05','Surya','CHANDRA DEALERS','PLAZA HOUSE','USA');
INSERT INTO exportDetails VALUES(2,1002,10,'2022/10/25','Standard class','2022/11/06','Subhash','CHANDRA DEALERS',' HOUSE','Malaysia');
INSERT INTO exportDetails VALUES(3,1003,10,'2022/10/25','First class','2022/11/10','Rohith','CHANDRA DEALERS',' HOUSE','Netherland');
INSERT INTO exportDetails VALUES(4,1004,10,'2022/10/25','Second class','2022/11/10','Manju','CHANDRA DEALERS','PLAZA HOUSE','Japan');
INSERT INTO exportDetails VALUES(5,1005,10,'2022/10/25','Second class','2022/11/01','Neha','CHANDRA DEALERS','PLAZA HOUSE','Miami');
INSERT INTO exportDetails VALUES(6,1006,10,'2022/10/25','First class','2022/11/06','Suhasini','CHANDRA DEALERS','PLAZA HOUSE','Jordan');
INSERT INTO exportDetails VALUES(7,1007,10,'2022/10/25','Second class','2022/11/05','Shrisha','CHANDRA DEALERS','PLAZA HOUSE','Switzerland');
INSERT INTO exportDetails VALUES(8,1008,10,'2022/10/25','First class','2022/11/02','Vishwa','CHANDRA DEALERS','PLAZA HOUSE','UK');
INSERT INTO exportDetails VALUES(9,1009,10,'2022/10/25','Standrd class','2022/11/05','Vidhu','CHANDRA DEALERS','HOUSE','USA');
INSERT INTO exportDetails VALUES(10,1010,'2022/10/25','Second class','2022/11/11','Eshwar','CHANDRA DEALERS','Mesmi house','Melbourne');
