-- Stored Procedure of populaiting product data
create proc populate_product_data
as
insert into product_dim
					(
					Source_Key_Productid,
					Category,
					Product_Weight,
					Length,
					Height,
					Width
					) 
			select
					product_id ,
					product_category_nane ,
					weight ,
					length ,
					height ,
					width
			from get_product_data
