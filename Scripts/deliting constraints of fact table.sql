create proc drop_all_fact_talbe_constrints
as

alter table orders_fact drop constraint product_FK;
alter table orders_fact drop constraint customer_FK;
alter table orders_fact drop constraint status_FK;
alter table orders_fact drop constraint Seller_FK;
alter table orders_fact drop constraint purches_FK;
alter table orders_fact drop constraint Estimated_delivery_date_FK;
alter table orders_fact drop constraint geo_location_FK;

	


