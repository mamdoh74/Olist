alter proc Making_relations
as

alter table orders_fact add constraint product_FK foreign key(product_id) references product_dim(product_id);
alter table orders_fact add constraint customer_FK foreign key(Customer_id) references Customer_dim(customer_id);
alter table orders_fact add constraint Status_FK foreign key(order_status_id) references status_dim(status_id);
alter table orders_fact add constraint Seller_FK foreign key(seller_id) references seller_dim(seller_id);
alter table orders_fact add constraint geo_location_FK foreign key(Customer_ZipCode) references geolocation(zipcode);

alter table orders_fact add constraint purches_FK foreign key(order_purches_date) references dim_date(date);
alter table orders_fact add constraint approved_FK foreign key(order_approved_time) references dim_date(date);
alter table orders_fact add constraint delivey_carrier_date_FK foreign key(delivey_carrier_date) references dim_date(date);
alter table orders_fact add constraint Estimated_delivery_date_FK foreign key(Estimated_delivery_date) references dim_date(date);



