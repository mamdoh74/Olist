-- Creating the Structure of Dimentions 
create table Product_dim (
Product_id int primary key identity(1,1),
Source_Key_Productid varchar(50) not null,
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
customer_zip_code varchar(6) not null,
latitude float not null,
longitude float not null,
city varchar(20) ,
state varchar(6) 
);

-- Create seller table 
create table seller_dim
(
Seller_id int primary key identity(1,1),
source_seller_id varchar(50) not null,
Seller_zip_code varchar(6) not null,
City varchar(20),
state varchar(6),
latitude float ,
longitude float
);

-- creating Review Table 
create table Order_reviews_dim
(
Review_id int primary key identity(1,1),
source_review_id varchar(50) not null,
order_id int not null,
review_score tinyint not null
);