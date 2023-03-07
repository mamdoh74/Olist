create proc cleaning_dates
as
update orders_fact set 
						order_purches_date = convert(char(14),order_purches_date,121)+'00:00' ,  
						order_approved_time = convert(char(14),order_approved_time,121)+'00:00' ,  
						Delivey_carrier_date= convert(char(14),Delivey_carrier_date,121)+'00:00' ,  
						estimated_delivery_date = convert(char(14),estimated_delivery_date,121)+'00:00'  
