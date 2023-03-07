-- Creating a view of getting order fact table data 
create view get_order_fact_data 
as
select 
	cast(substring(o.["order_id"],2,len(o.["order_id"])-2) as varchar(50)) as order_id,
	cast(i.["order_item_id"] as int) order_item_id,
	cast(substring(i.["product_id"],2,len(i.["product_id"])-2) as varchar(50)) as product_id,
	cast(i.["price"] as float) as price,
	cast(i.["freight_value"] as float) as freight,
	substring(cast(o.["customer_id"] as varchar(50)),2,len(o.["customer_id"])-2) as customer_id,
	substring(cast(i.["seller_id"] as varchar(50)) ,2,len(i.["seller_id"])-2) as seller_id,
	cast(o.["order_status"] as varchar(15)) as order_status,
	cast(o.["order_purchase_timestamp"] as datetime) as order_purches_time,
	cast(o.["order_approved_at"] as datetime) as order_approved_time,
	cast(o.["order_delivered_carrier_date"] as datetime) as order_delivered_carrier_date,
	cast(o.["order_delivered_customer_date"] as datetime) as order_delivered_customer_date,
	cast(o.["order_estimated_delivery_date"] as datetime)as order_estimated_delivery_date,
	cast(substring(c.["customer_zip_code_prefix"],2,len(c.["customer_zip_code_prefix"])-2) as varchar(6)) as Customer_ZipCode
from Orders o right join [dbo].[Orders_items] i
on o.["order_id"] = i.["order_id"]
inner join Customers c on o.["customer_id"]=c.["customer_id"]




