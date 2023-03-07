Create proc populate_customer_data
as
insert into customer_dim (
							source_customer_id,
							customer_unique_key,
							customer_zip_code,
							latitude,
							longitude,
							city,
							state
							)
	select 
						customer_id ,
						customer_unique_id ,
						customer_zip_code,
						latitude ,
						longitude ,
						customer_city ,
						customer_state
	from get_customer_data


