---SSIS-----


drop table FA_CARS_SCD2;

----------------------

---------------------

select * from target_FA_CARS_SCD1 ;
drop table target_FA_CARS_SCD1;

----target scd1---


CREATE TABLE target_FA_CARS_SCD1(
    SupplierID float,
    SupplierAddress nvarchar(255),
    SupplierName nvarchar(255),
    SupplierContactDetails nvarchar(255),
    ProductID float,
    CarMaker nvarchar(255),
    CarModel nvarchar(255),
    CarColor nvarchar(255),
    CarModelYear float,
    CarPrice float,
    CustomerID nvarchar(255),
    CustomerName nvarchar(255),
    Gender nvarchar(255),
    JobTitle nvarchar(255),
    PhoneNumber nvarchar(255),
    EmailAddress nvarchar(255),
    City nvarchar(255),
    Country nvarchar(255),
    CountryCode nvarchar(255),
    State nvarchar(255),
    CustomerAddress nvarchar(255),
    OrderDate float,
    OrderID nvarchar(255),
    ShipDate float,
    ShipMode nvarchar(255),
    Shipping nvarchar(255),
    PostalCode float,
    Sales float,
    Quantity float,
    Discount float,
    CreditCardType nvarchar(255),
    CreditCard float,
    CustomerFeedback nvarchar(255)
);


------------------------------
---SCD2--------------
drop table FA_CARS_SCD2;

CREATE TABLE FA_CARS_SCD2 (
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

 ---drop table FA_CARS_SCD2;

select * from FA_CARS_SCD2;
alter table FA_CARS_SCD2 add  start_ date;
alter table FA_CARS_SCD2 add end_ date;



---aggrigate



select * from Assign_Aggrigate_cinema;


-----------------
