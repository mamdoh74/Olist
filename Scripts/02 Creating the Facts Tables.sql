-- Creating the Structure of Dimentions 
create proc generate_dimintions
as
create table Product_dim (
Product_id int primary key identity(1,1),
Source_Key_Productid varchar(50) not null,
Category varchar(50) not null,
Product_Weight int ,
Length int ,
Height int,
Width int
);


	
-- Creating the Status Table 
Create table Status_dim(
Status_id tinyint primary key identity(1,1),
Status varchar(20) not null
);

-- Creating Customer table 
Create table Customer_dim
(
Customer_id int primary key identity(1,1),
source_customer_id varchar(50) not null,
customer_unique_key varchar(50) not null,
customer_zip_code varchar(6) ,
latitude float ,
longitude float ,
city varchar(20) ,
state varchar(6) 
);

-- Create seller table 
create table seller_dim
(
Seller_id int primary key identity(1,1),
source_seller_id varchar(50) not null,
);

-- creating the date dim 
-- Create Date Dimention
Create table Dim_Date
(
date		datetime not null primary key,
hour		tinyint not null,
day			tinyint not null,
year		int not null,
month		tinyint not null,
MonthName   varchar(20) not null,
DayName     varchar(20) not null,
Quarter		varchar(2) not null,
Week		tinyint not null,
day_of_year int not null
);


create table geolocation
(
zipcode varchar(6) primary key,
latitude float ,
longitude float,
city varchar(30) ,
state varchar(10) 
);



