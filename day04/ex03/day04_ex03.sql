select vg.generated_date as missing_date
from v_generated_dates as vg
left join person_visits as pv on vg.generated_date = pv.visit_date
where pv.visit_date is NULL
order by 1;