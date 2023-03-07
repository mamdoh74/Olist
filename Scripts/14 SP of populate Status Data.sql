create proc populate_status_data
as
insert into status_dim (Status) select status from Get_Status_Data