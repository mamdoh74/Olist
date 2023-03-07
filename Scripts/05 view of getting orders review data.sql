--  view of getting review data
create view get_review_data
as
select 
	cast(review_id as varchar(50)) as source_review_id,
	cast(order_id as varchar(50)) as order_id,
	cast(review_score as tinyint ) as score
from reviews