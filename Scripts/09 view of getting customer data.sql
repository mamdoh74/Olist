-- view of getting customer data
create view get_customer_data
as
select 
	substring(cast(["customer_id"] as varchar(50)) , 2, len(["customer_id"])-2) as customer_id,
	cast(substring(["customer_unique_id"],2,len(["customer_unique_id"])-2) as varchar(50)) customer_unique_id,
	cast(substring(["customer_zip_code_prefix"] ,2,len(["customer_zip_code_prefix"])-2) as varchar(6)) as  customer_zip_code,
	cast(["customer_city"] as varchar(20)) as customer_city,
	cast(["customer_state"] as varchar(5)) as customer_state,
	cast(g.latitude as float) as latitude,
	cast(g.longitude as float) as longitude
from Customers left join geo_location_data g
on cast(substring(["customer_zip_code_prefix"] ,2,len(["customer_zip_code_prefix"])-2) as varchar(6))=g.zip_code

