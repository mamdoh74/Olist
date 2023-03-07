-- View of Getting Status Data
create view Get_Status_Data
as
select distinct cast(["order_status"] as varchar(15)) as status
from Orders 