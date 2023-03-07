-- date Procedure
--Sp Loading the Date Dimetion 
alter proc populate_Date @StartDate datetime , @endDate datetime 
as
begin 
	-- first i should add the Default Value of Date TO Handle Any Error
	insert into dim_date
		(
			date		,
			hour		,
			day			,	
			year		,	
			month		,	
			MonthName  	,
			DayName    	,
			Quarter		,
			Week		,
			day_of_year	
		)
	values 
		(
			'2012-01-01 00:00:00',
			0,
			0,
			0,
			0,
			'N/A',
			'N/A',
			'NA',
			0,
			0
		);	

		-- With the end of this insert statement i should Start with The Real Work That is Adding the Real Values of Date
		-- That i Will Work With 
		while @StartDate < @endDate
		begin 
			insert into Dim_Date
			(
				date		,
				hour		,
				day			,	
				year		,	
				month		,	
				MonthName  	,
				DayName    	,
				Quarter		,
				Week		,
				day_of_year	
			)
			values 
			(
				@StartDate,
				DATEPART(HOUR, @StartDate),
				day(@StartDate),
				year(@StartDate),
				format(@StartDate,'mm'),
				format(@StartDate,'MMMM'),
				format(@StartDate,'ddd'),
				'Q'+cast(DATEPART(q,@StartDate) as varchar),
				format(@StartDate,'dd')/7,
				DATEPART(dy,@StartDate)
			);	
		set @StartDate = dateadd(HH,1,@StartDate)
		end
select 'The Population Operation Has Compleated';
select * from dim_date;

end