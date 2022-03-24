select t1.action_date, p.name as person_name
from person as p, (select order_date as action_date, person_id as person_id
		from person_order
		intersect
		select visit_date as action_date, person_id as person_id
		from person_visits) as t1
where p.id = t1.person_id
order by action_date, person_name desc;