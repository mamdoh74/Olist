-- populate orders fact table 
create proc populate_order_data
as
insert into  orders_fact (
							order_id,
							item_id,
							Price,
							fright,
							product_id,
							Customer_id,
							Seller_id,
							Order_Status_id,
							Order_Purches_Date,
							Order_approved_time,
							Delivey_Carrier_Date,
							Estimated_Delivery_Date,
							Customer_ZipCode
							)
	select 
				order_id ,
				order_item_id ,
				price ,
				freight ,
				p.product_id ,
				c.customer_id ,
				ss.seller_id ,
				s.status_id ,
				order_purches_time ,
				order_delivered_carrier_date ,
				order_delivered_customer_date ,
				order_estimated_delivery_date  ,
				customer_zipcode
	from 
		get_order_fact_data f inner join Status_dim s 
		on f.order_status = s.status
		inner join customer_dim c on f.customer_id = c.source_customer_id 
		inner join seller_dim ss on  f.seller_id = ss.source_seller_id
		inner join product_dim p on f.product_id = p.source_key_productid

