-- View of Getting data of Geo Locatoin Data With out the repeated rows
create view geo_location_data
as
select 
	cast(substring(["geolocation_zip_code_prefix"],2,len(["geolocation_zip_code_prefix"])-2)as varchar(6)) as zip_code ,
	cast(["geolocation_lat"] as float) as latitude ,
	cast(["geolocation_lng"] as float) as longitude ,
	cast(["geolocation_city"] as varchar(20)) as city ,
	cast(["geolocation_state"] as varchar(5)) as state
from
(
select * , ROW_NUMBER() over(partition by ["geolocation_zip_code_prefix"] order by ["geolocation_zip_code_prefix"]) as number
from Geo_Location
) as tbl
where number=1
