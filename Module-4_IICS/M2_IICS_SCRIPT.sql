


CREATE TABLE assign_iisc_cars_SCD1(   
tar_seq_number INT,    
tar_SupplierID float,   
tar_SupplierAddress nvarchar(255), 
tar_SupplierName nvarchar(255),
tar_SupplierContactDetails nvarchar(255),  
tar_ProductID float,  
tar_CarMaker nvarchar(255),  
tar_CarModel nvarchar(255),  
tar_CarColor nvarchar(255),  
tar_CarModelYear float,  
tar_CarPrice float,  
tar_CustomerID nvarchar(255),  
tar_CustomerName nvarchar(255),  
tar_Gender nvarchar(255),  
tar_JobTitle nvarchar(255),  
tar_PhoneNumber nvarchar(255),  
tar_EmailAddress nvarchar(255),  
tar_City nvarchar(255),  
tar_Country nvarchar(255),  
tar_CountryCode nvarchar(255),  
tar_State nvarchar(255),  
tar_CustomerAddress nvarchar(255), 
tar_OrderDate float,  
tar_OrderID nvarchar(255),  
tar_ShipDate float,  
tar_ShipMode nvarchar(255),  
tar_Shipping nvarchar(255), 
tar_PostalCode float,  
tar_Sales float,  
tar_Quantity float,  
tar_Discount float, 
tar_CreditCardType nvarchar(255),  
tar_CreditCard float,  
tar_CustomerFeedback nvarchar(255),  
tar_Checksum VARCHAR(100),  
tar_status VARCHAR(50)
);

select * from assign_iisc_cars_SCD1;

drop table assign_iisc_cars_SCD1;



----SD2


CREATE TABLE assign_iics_cars_SCD2(   
tar_seq_number INT, 
tar_SupplierID float,   
tar_SupplierAddress nvarchar(255), 
tar_SupplierName nvarchar(255),
tar_SupplierContactDetails nvarchar(255),  
tar_ProductID float,  
tar_CarMaker nvarchar(255),  
tar_CarModel nvarchar(255),  
tar_CarColor nvarchar(255),  
tar_CarModelYear float,  
tar_CarPrice float,  
tar_CustomerID nvarchar(255),  
tar_CustomerName nvarchar(255),  
tar_Gender nvarchar(255),  
tar_JobTitle nvarchar(255),  
tar_PhoneNumber nvarchar(255),  
tar_EmailAddress nvarchar(255),  
tar_City nvarchar(255),  
tar_Country nvarchar(255),  
tar_CountryCode nvarchar(255),  
tar_State nvarchar(255),  
tar_CustomerAddress nvarchar(255), 
tar_OrderDate float,  
tar_OrderID nvarchar(255),  
tar_ShipDate float,  
tar_ShipMode nvarchar(255),  
tar_Shipping nvarchar(255), 
tar_PostalCode float,  
tar_Sales float,  
tar_Quantity float,  
tar_Discount float, 
tar_CreditCardType nvarchar(255),  
tar_CreditCard float,  
tar_CustomerFeedback nvarchar(255),  
tar_Checksum VARCHAR(100),  
tar_status VARCHAR(50),

);


SELECT * FROM iisc_cinema_sorting_target;

select * from assign_iisc_cars_SCD1;

select * from assign_iics_cars_SCD2;

--select * from target_FA_CARS_SCD1;

alter table assign_iisc_cars_SCD1;
drop column tar_status;
-------------
SELECT * FROM T_FINAL_CARS_1000;

 select * from Cinema_ASSIGN_data;

select * from Final_original_cars_data;

select DISTINCT film_type from TARGET_CINEMA_IICS;
select * from TARGET_CINEMAL_IICS_FINAL;
select * from TARGET_CARS_IICS;

UPDATE T_FINAL_CARS_1000 
SET CarPrice= '10000.3'
where SupplierID=2;



UPDATE T_FINAL_CARS_1000 
SET CarModelYear = '2030'
where SupplierID=3;
-------------------FINAL---------


SELECT count(*) from  Final_original_cars_data
where Gender='Female';



UPDATE T_FINAL_CARS_1000 
SET CarPrice= '111111.3'
where SupplierID=1;

--------------

CREATE TABLE shreya.dbo.Cinema_ASSIGN_data (
	Film_Type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Copy_film_code int NULL,
	Copy_cinema_code int NULL,
	Copy_total_sales int NULL,
	Copy_tickets_sold int NULL,
	Copy_tickets_out int NULL,
	Copy_show_time int NULL,
	occu_perc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Copy_ticket_price int NULL,
	Copy_ticket_use int NULL,
	capacity varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Copy_date int NULL,
	Copy_month int NULL,
	Copy_quarter int NULL,
	Copy_day int NULL
);

