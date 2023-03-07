-- procedure of truncating tables 
alter proc truncating_tables
as
IF (EXISTS (SELECT *
   FROM INFORMATION_SCHEMA.TABLES
   WHERE TABLE_SCHEMA = 'dbo'
   AND TABLE_NAME = 'orders_fact'))
   BEGIN
   if exists (
    SELECT * 
    FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS 
    WHERE CONSTRAINT_NAME ='product_FK')
		begin 
		alter table orders_fact drop constraint product_FK;
		end;
	if exists (
    SELECT * 
    FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS 
    WHERE CONSTRAINT_NAME ='customer_FK')
		begin 
		alter table orders_fact drop constraint customer_FK;
		end;
	if exists (
    SELECT * 
    FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS 
    WHERE CONSTRAINT_NAME ='Status_FK')
		begin 
		alter table orders_fact drop constraint Status_FK;
		end;
	if exists (
    SELECT * 
    FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS 
    WHERE CONSTRAINT_NAME ='Seller_FK')
		begin 
		alter table orders_fact drop constraint Seller_FK;
		end;
	if exists (
    SELECT * 
    FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS 
    WHERE CONSTRAINT_NAME ='geo_location_FK')
		begin 
		alter table orders_fact drop constraint geo_location_FK;
		end;
	if exists (
    SELECT * 
    FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS 
    WHERE CONSTRAINT_NAME ='purches_FK')
		begin 
		alter table orders_fact drop constraint purches_FK;
		end;
	if exists (
    SELECT * 
    FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS 
    WHERE CONSTRAINT_NAME ='approved_FK')
		begin 
		alter table orders_fact drop constraint approved_FK;
		end;
	if exists (
    SELECT * 
    FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS 
    WHERE CONSTRAINT_NAME ='delivey_carrier_date_FK')
		begin 
		alter table orders_fact drop constraint delivey_carrier_date_FK;
		end;
	if exists (
    SELECT * 
    FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS 
    WHERE CONSTRAINT_NAME ='Estimated_delivery_date_FK')
		begin 
		alter table orders_fact drop constraint Estimated_delivery_date_FK;
		end;
	-- drop the entire table
	truncate table orders_fact;
   END;


truncate table orders_fact;

truncate table customer_dim;
truncate table geolocation ;
truncate table product_dim;
truncate table dim_date;
truncate table status_dim;
truncate table seller_dim;
