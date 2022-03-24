select *
from (select pizza_name as object_name
	from menu
	union all select name as object_name
	from person) as t1
order by t1.object_name;