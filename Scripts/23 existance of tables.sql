-- Sp of existance of tablse 
create proc existance_of_tables 
as
IF (EXISTS (SELECT *
   FROM INFORMATION_SCHEMA.TABLES
   WHERE TABLE_SCHEMA = 'dbo'
   AND TABLE_NAME = 'orders_fact'))
   BEGIN
      select 1;
   END;
ELSE
   BEGIN
      select 0;
   END;