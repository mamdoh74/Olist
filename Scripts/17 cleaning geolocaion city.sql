create proc cleaning_geo_location
as
update geolocation set city = 'sao paulo' where city = 'são paulo'