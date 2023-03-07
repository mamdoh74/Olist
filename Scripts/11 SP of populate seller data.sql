create proc populate_seller_data
as
insert into 
		seller_dim (source_seller_id)
		select distinct seller_id from get_seller_data
