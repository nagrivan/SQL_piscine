select id, person_id, menu_id, order_date
from person_order
where MOD(id, 2) = 0
order by id;