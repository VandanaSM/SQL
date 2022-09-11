use xworkz;
Create table movies(id int primary key ,name varChar(20) not null,releaseDate date not null,
producer varCHAR(20) NOT NULL,hero varChar(20) unique,heroine varChar(20) unique,
budget int not null,ratings float check(ratings<=10),language varchar(10) default 'Telugu');

insert into movies values(1,'HIT','2020-12-10','ABC','Vishwak Sen','Ruhani',2500000,9.5,'Tamil');
insert into movies(id,name,releaseDate,producer,hero,heroine,budget,ratings) values(2,'RRR','2020-12-10','BCD',
'JR.NTR','Alia',10000000,9.5);
insert into movies values(3,'KGF','2020-12-10','CDE','Yash','Srinidhi',10000000,9,'Kannada');
insert into movies(id,name,releaseDate,producer,hero,heroine,budget,ratings) values(4,'Nuvstante nendntana',
'2010-12-10','def','Siddarth','Trisha',10000000,9);
insert into movies(id,name,releaseDate,producer,hero,heroine,budget,ratings) values(5,'Bommarillu','2010-12-10','efg',
'Sid','Jenelia',1000000,9);
insert into movies(id,name,releaseDate,producer,hero,heroine,budget,ratings) values(6,'Magadheera','2010-6-10','ghi',
'Ram charan','Kajal',5000000,9.5);
insert into movies values(7,'Lagaan','2002-12-10','IJK','Aamir khan','abc',2000000,9.5,'Hindi');
insert into movies values(8,'Bajirao mastani','2016-12-10','JKL','Ranbir singh','Deepika',5500000,8,'Hindi');
insert into movies(id,name,releaseDate,producer,hero,heroine,budget,ratings) values(9,'Anand','2010-12-10','KLM',
'raja abel','Kamaline mukherjee',1000000,9);
insert into movies(id,name,releaseDate,producer,hero,heroine,budget,ratings) values(10,'Mahanati','2019-6-10','LMN',
'Dulquer salman','Kirti suresh',5000000,9);

Alter table movies add boxOfficeCollection int;
Alter table movies modify column boxOfficeCollection float;
Alter table movies rename column boxOfficeCollection to collectionAtBoxOffice; 
UPDATE movies SET collectionAtBoxOffice =10000000.00 WHERE id=10 ;
Alter table movies rename to moviesList;
select * from moviesList;
alter table moviesList rename to movies;
select * from movies;

select * from movies where id='2';
select * from movies where name='Bommarillu';
select * from movies where id='2' and name='hit';
select * from movies where id='2' and name='RRR';
select * from movies where id='6' or name='mahanati';
select * from movies where id in(1,4,7);
select * from movies where hero in ('siddarth');
select * from movies where id not in(2,5,9);

UPDATE movies SET hero='Siddarth' WHERE hero='sid'; 
select* from movies;
alter table movies drop index  hero;
select * from movies where id between 2 and 6;
select * from movies order by id desc;
select * from movies where name like '%l%';
select name,count(*) from movies group by name; 
select distinct name from movies;
SELECT id ,max(ratings) as ratings from movies Group by ratings HAVING ratings>9;
SELECT instr('Nuvstante nendntana','N') as position;
SELECT substr('Nuvstante nendntana',4,15)AS substring;

