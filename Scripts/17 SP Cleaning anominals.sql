create proc Clean_anominals
as
update orders_fact set delivey_carrier_Date='2012-01-01 00:00:00.000' where delivey_carrier_Date = '1900-01-01 00:00:00.000';
update orders_fact set order_approved_time='2012-01-01 00:00:00.000' where order_approved_time = '1900-01-01 00:00:00.000';


