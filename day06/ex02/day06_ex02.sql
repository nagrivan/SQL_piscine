select person.name, menu.pizza_name, menu.price, menu.price as 	discount_price
from person
join person_order as po
on person.id = po.person_id
join menu
on po.menu_id = menu.id
-- join person_discounts as pd
-- on person.id = pd.person_id
order by 1, 2;