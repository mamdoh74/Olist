-- view of getting product data
create view get_product_data
as
select 
	cast(substring(["product_id"],2,len(["product_id"])-2) as varchar(50)) as product_id,
	cast(["product_category_name"] as varchar(50)) product_category_nane,
	cast(["product_weight_g"] as int) as weight,
	cast(["product_name_lenght"] as int) as length,
	cast(["product_height_cm"] as int) as height,
	cast(["product_width_cm"] as int ) as width
from Products




