-- creating a view of getting seller data 
create view get_seller_data
as
select 
	substring(["seller_id"],2,len(["seller_id"])-2) as seller_id,
	cast(substring(["seller_zip_code_prefix"],2,len(["seller_zip_code_prefix"])-2) as varchar(6)) as seller_zip_code,
	cast(["seller_city"] as varchar(20) ) as seller_city,
	cast(["seller_state"] as varchar(5)) as seller_state,
	cast (g.latitude as float) as latitude,
	cast(g.longitude as float) as longitude
from Seller left join geo_location_data g
on cast(substring(["seller_zip_code_prefix"],2,len(["seller_zip_code_prefix"])-2) as varchar(6))=g.zip_code


