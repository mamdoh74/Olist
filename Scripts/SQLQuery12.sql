exec making_relations


select * from orders_fact



select min(delivey_carrier_Date) , max(delivey_carrier_Date) from orders_fact
select min(order_approved_time) , max(order_approved_time) from orders_fact


delete from orders_fact where