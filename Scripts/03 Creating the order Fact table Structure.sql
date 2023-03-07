-- Creating the Fact table 
create proc generate_fact_table 
as
create table Orders_fact
(
order_item_id int primary key identity(1,1),
order_id varchar(50) not null,
item_id int not null,
Price float not null,
fright float not null,
product_id int not null,
Customer_id int not null,
Seller_id int not null,
Order_Status_id tinyint not null,
Order_Purches_Date datetime,
Order_approved_time datetime,
Delivey_Carrier_Date datetime,
Estimated_Delivery_Date datetime,
Customer_ZipCode varchar(6) not null
);


