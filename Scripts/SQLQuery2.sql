select * from facttable


select * from Stations where Source_Key_Station_id=151

select * from Stations

select * from(
select * , ROW_NUMBER()over(partition by source_key_station_id order by  source_key_station_id) as dense
from stations ) as tbl
where dense=1