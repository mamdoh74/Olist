-- populate geolocation data 
create proc populate_geo_location_data
as
insert into geolocation (zipcode,latitude,longitude,city,state) values (0,0,0,'N/A','N/A');
insert into geolocation(
						zipcode,
						latitude,
						longitude,
						city,
						state
						)
	select 
				zip_code ,
				latitude,
				longitude,
				city,
				state
	from geo_location_data