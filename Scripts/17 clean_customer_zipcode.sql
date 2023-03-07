create proc clean_customer_zipcode
as
update 
	orders_fact 
set 
	customer_zipcode = 0 
where 
	Customer_zipcode in 
(
select distinct 
	o.customer_zipcode
from 
	orders_fact o 
where 
	o.customer_zipcode not in ( select distinct 
									zipcode 
								from 
									geolocation
								));
update 
	customer_dim 
set 
	customer_zip_code = 0 
where 
	Customer_zip_code in 
(
select distinct 
	o.customer_zipcode
from 
	orders_fact o 
where 
	o.customer_zipcode not in ( select distinct 
									zipcode 
								from 
									geolocation
								));


