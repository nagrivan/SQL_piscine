create view v_generated_dates as
select tg.generated_date::date
from 	generate_series('2022-01-01'::date, '2022-01-31'::date, '1 day'::interval)
		tg (generated_date)
order by tg.generated_date;

select * from v_generated_dates;