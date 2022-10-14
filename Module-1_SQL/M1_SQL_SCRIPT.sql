
---------------------------------------------
drop table hospitals;
drop table department;
drop table patients;


------------SELECT---------------------------------------------
select * from target_FA_CARS_SCD1;


select * from iisc_cinema_sorting_target;





--------------------------------------------------------------
---assignment


----------------------------
-------------------------------------------
---hospital table (parent)---
CREATE TABLE hospitals (
	hID int  primary key ,
	h_name varchar(80) NOT NULL,
	h_location varchar(50)  NOT NULL,
	h_city varchar(20)  NOT NULL,
	h_contact varchar(15)  NOT NULL,
	
);

-----depatment table(child table1)--
CREATE TABLE department (
	dID int  PRIMARY KEY ,
	dr_name varchar(30)  ,
	dr_ph varchar(15) ,
	dr_location varchar(50) ,
	dr_age int ,
	dept_name varchar(30),
	hID int FOREIGN KEY (hID) REFERENCES hospitals(hID),
    
);

----patient table(child table2)--
CREATE TABLE patients (
	pID int primary key,
	p_name varchar(30) ,
	p_location varchar(50),
	p_ph varchar(15),
	p_age int ,
	hID int FOREIGN KEY (hID) REFERENCES hospitals(hID),
	dID int FOREIGN KEY (dID) REFERENCES department(dID),
	 

);

----select---

select * from hospitals ;
select * from department ;
select * from patients;


----inserting values into 3-tables-----

---inserting values into hospital table--
insert into hospitals
values (1,'Bowring hospital','Shivajinagar bus stand Cantonment',' Bangalore',9678930216),
(2,'Mallya Hospital','Vittal Mallya Road','Bangalore',7865432109),
(3,'E.S.I Hospital','Hospital HAL II Stage Indiranagar',' Bangalore',8976543210),
(4,'KLES Hospital','Nehrunagar','Hassan',8765489765),
(5,'Adichunchanagiri Hospital','Balagangadhara Nagar','Mysore',	6754345210),
(6,'Kasturba Hospital',' Manipal udupi' ,'Udupi',9976543010),
(7,'K.S.Hegde Medical Hospital','pumpwell road','Mangalore',5576543010),
(8,'KMC Hospital',' jyothi circle', 'Mangalore',8886543010),
(9,'Columbia Asia Hospital',' palace road','Mysore',9988888510),
(10,'Columbia Asia Hospital',' yashwanthpur main road','Bangalore',9456343010);

---inserting values into department table--

insert into department 
values(100,'dr.shreya',6362986187,'Bangalore',44,'ENT',1),
(101,'dr.vibha',9892996182,'Bangalore',54,'GYNAECOLOGY',1),
(102,'dr.Ram',6999996187,'Mangalore',34,'ORTHOPAEDICS',8),
(103,'dr.Antony',9092996187,'Bangalore',44,'NEUROLOGY',3),
(104,'dr.Sham',6388886180,'Hassan',64,'SURGERY',4),
(105,'dr.Murthy',8989996188,'Udupi',46,'SURGERY',6),
(106,'dr.Sam',8567996187,'Mysore',65,'X-ray',9),
(107,'dr.Sam',8982996999,'Mysore',58,'X-ray',9),
(108,'dr.Venky',9567996180,'Bangalore',58,'Radiology',10),
(109,'dr.Siri',6362990000,'Mysore',74,'X-ray',5),
(110,'dr.Mohan',8596996187,'Bangalore',29,'CARDIOLOGY',1),
(111,'dr.Arun',7869996187,'Bangalore',39,'dental',2),
(112,'dr.Samarth',9562999699,'Mangalore',36,'SKIN',7),
(113,'dr.nommy',9448276546,'Sanjaynagar',30,'Radiology',3);



---inserting values into patient table--



insert into patients values(301,'Param','Bangalore',8765489034,33,1,100),
(302,'Soukya','Davengere',8765411214,39,1,100),
(303,'Vp','Hassan',9112489034,77,1,101),
(304,'Abhignya','Mandya',8411289034,35,1,110),
(305,'Manoj','Bangalore',8765664534,33,1,110),
(306,'Arun','Mysore',6453489034,41,8,102),
(307,'Sammy','Mangalore',9765645334,49,8,102),
(308,'Radha','Mangalore',8899486453,51,8,102),
(309,'Krish','Mangalore',9767685453,15,8,102),
(310,'Davinci','Lahore',9865486453,40,3,103),
(311,'Manu','Mangalore',9765465483,48,3,103),
(312,'Marry','Darmasthala',9733386453,98,3,103),
(313,'Reginald','Mangalore',9765000053,23,3,103),
(314,'Akshay','Mulki',7766586453,51,4,104),
(315,'Chai','Hassan',8800886453,65,4,104),
(316,'Manasa','Hassan',8332286453,76,4,104),
(317,'Sumana','Manipal',9097886453,31,4,104),
(318,'Rohan','Mangalore',9765680088,79,6,105),
(319,'Shank','Karkala',9954345334,69,2,105),
(320,'Pari','Bangalore',7008864533,19,3,105),
(321,'Garry','Mangalore',9912153340,22,6,105),
(322,'Zookyy','Bangalore',9765883353,26,3,106),
(323,'Darren','Bangalore',9965321453,29,3,106),
(324,'Sammy','Mysore',9765099203,33,3,107),
(325,'Vineeth','Mandya',9765908733,53,9,107),
(326,'Suhas','kerala',9765003420,63,10,107),
(327,'Virat','Assam',8121586453,85,10,108),
(328,'Kanika','Delhi',8800812153,34,10,108),
(329,'Chiranth','Bangalore',8812156453,55,5,109),
(330,'Nina','Hassan',8800889087,60,1,109),
(331,'Sammy','Mysore',9765099203,33,3,110),
(332,'Sammy','Mangalore',9765099203,51,3,110),
(333,'Nihal','Bihar',9765099203,76,3,111),
(334,'Paul','Belgaum',9765099203,73,3,111),
(335,'Sammy.k','Ganganagar',9765099203,32,3,112);






----------------joins--------------


---INNER JOIN---
Select H.hID,H.h_name,H.h_location ,D.dID,D.dr_name,D.dept_name,P.pID,P.p_name
from hospitals H
INNER join department D as NEW_DEPT
ON H.hID =D.hID 
INNER JOIN patients P as N_PATI
on D.dID =P.dID ;
----------------------
---LEFT JOIN---
Select H.hID,H.h_name,H.h_location ,D.dID,D.dr_name,D.dept_name,P.pID,P.p_name
from hospitals H
LEFT join department D as NEW_DEPT
ON H.hID =D.hID 
LEFT JOIN patients P as N_PATI
on D.dID =P.dID ;

-----RIGHT JOIN---
Select H.hID,H.h_name,H.h_location ,D.dID,D.dr_name,D.dept_name,P.pID,P.p_name
from hospitals H
RIGHT join department D as NEW_DEPT
ON H.hID =D.hID 
RIGHT JOIN patients P as N_PATI
on D.dID =P.dID ;
--cross join-----

select P.pID,P.p_name ,P.p_age ,P.p_location ,D.dID ,D.dr_name ,D.dept_name ,H.hID ,H.h_name ,H.h_location ,H.h_contact 
from patients as P 
cross join department as D 
cross join hospitals as H;

-----FULL JOIN----

Select H.hID,H.h_name,H.h_location ,D.dID,D.dr_name,D.dept_name,P.pID,P.p_name
from hospitals H
FULL join department D as NEW_DEPT
ON H.hID =D.hID 
FULL JOIN patients P as N_PATI
on D.dID =P.dID ;


---------------------------------------VIEWS--------------------------------------------------

---no of patients visited  defined cities----
CREATE view same_cities as
select p_location ,count(pID) as no_of_patients from patients
group by p_location 
having p_location ='Mangalore' or p_location='Bangalore' or p_location ='Delhi';


-- dr who had no check up on any patients----

create view dr_nocheckup as
select D.dID,D.dr_name,D.dept_name,P.pID
from patients P
right join department D on D.dID=P.dID where P.pID is NULL;

-----views for full join------------------

create view full_join as
Select H.hID,H.h_name,D.dID,D.dr_name,D.dept_name,P.pID,P.p_name
from hospitals H
full join department D
ON H.hID =D.hID 
full JOIN patients P 
on D.dID =P.dID;

-------view for left join-----
create view  left_join as
Select H.hID,H.h_name,D.dID,D.dr_name,D.dept_name
from hospitals H
left join department D
ON H.hID =D.hID ;

----patient who had a check up more than once----

CREATE view multiple_checkup_patients as
select p_name ,count(pID) as repeated from patients group by p_name 
having count(pID)>1;


------------------------------------------------------------------------------------------------


------------------------------DML,DDL,..,------------------------------

CREATE TABLE Assign_Query_CAR_SALES  (
    [SupplierID] float,
    [SupplierAddress] nvarchar(255),
    [SupplierName] nvarchar(255),
    [SupplierContactDetails] nvarchar(255),
    [ProductID] float,
    [CarMaker] nvarchar(255),
    [CarModel] nvarchar(255),
    [CarColor] nvarchar(255),
    [CarModelYear] float,
    [CarPrice] float,
    [CustomerID] nvarchar(255),
    [CustomerName] nvarchar(255),
    [Gender] nvarchar(255),
    [JobTitle] nvarchar(255),
    [PhoneNumber] nvarchar(255),
    [EmailAddress] nvarchar(255),
    [City] nvarchar(255),
    [Country] nvarchar(255),
    [CountryCode] nvarchar(255),
    [State] nvarchar(255),
    [CustomerAddress] nvarchar(255),
    [OrderDate] float,
    [OrderID] nvarchar(255),
    [ShipDate] float,
    [ShipMode] nvarchar(255),
    [Shipping] nvarchar(255),
    [PostalCode] float,
    [Sales] float,
    [Quantity] float,
    [Discount] float,
    [CreditCardType] nvarchar(255),
    [CreditCard] float,
    [CustomerFeedback] nvarchar(255)
);



alter table Assign_Query_CAR_SALES 
add owner_name nvarchar

select * from Assign_Query_CAR_SALES 



----DML
--insert

insert into Assign_Query_CAR_SALES  values

(1002,	'6 Carioca Trail',	'Vidoo',	'159-34-3380',	3598,	'Mercury',	'Sable',	'Khaki'	,1996,	562701.11	,'48951-3141',	'Zitella Thackston',	'Female	','Financial Advisor',	'574-367-5341',	'zthackstonrj@theglobeandmail.com'	,'south Bend'	,'United States',	'US',	'Indiana',	'1513 Chive Junction',	43434,	'0548-3015',	43622,'	Standard Class','Air',46614,885826.68,	1,	0.78,	'maestro',	5.02E+18,	'Very Bad'),
(1003,	'8 Carioca Trail',	'Vidoo',	'159-34-3380',	3598,	'Mercury',	'Sable',	'Khaki'	,1996,	562701.11	,'48951-3141',	'Zitella Thackston',	'Female	','Financial Advisor',	'574-367-5341',	'zthackstonrj@theglobeandmail.com'	,'south Bend'	,'United States',	'US',	'Indiana',	'1513 Chive Junction',	43434,	'0548-3015',	43622,'	Standard Class','Air',46614,885826.68,	1,	0.78,	'maestro',	5.02E+18,	'Very Bad'),
(1004,	'9 Carioca Trail',	'Vidoo',	'159-34-3380',	3598,	'Mercury',	'Sable',	'Khaki'	,1996,	562701.11	,'48951-3141',	'Zitella Thackston',	'Female	','Financial Advisor',	'574-367-5341',	'zthackstonrj@theglobeandmail.com'	,'south Bend'	,'United States',	'US',	'Indiana',	'1513 Chive Junction',	43434,	'0548-3015',	43622,'	Standard Class','Air',46614,885826.68,	1,	0.78,	'maestro',	5.02E+18,	'Very Bad');

---update

update Assign_Query_CAR_SALES 
set SupplierName = 'shreya'
where SupplierID =1002;

select * from Assign_Query_CAR_SALES ;

---delete
delete from Assign_Query_CAR_SALES 
where SupplierID =1004;

--RENAME
alter table Assign_Query_CAR_SALES  
RENAME COLUMN SupplierID TO Supplier__ID

EXEC SP_RENAME 'Assign_Query_CAR_SALES  ' , 'Assign_Query_CAR_SALES '

--TRUNCATE 
TRUNCATE TABLE Assign_Query_CAR_SALES ;
select * from Assign_Query_CAR_SALES ;

--DROP
DROP TABLE Assign_Query_CAR_SALES; 




















