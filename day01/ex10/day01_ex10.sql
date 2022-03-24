select person.name as person_name, menu.pizza_name, pizzeria.name as pizzeria_name
from person join person_order on person.id = person_id
	join menu on menu.id = menu_id
	join pizzeria on pizzeria.id = pizzeria_id		
order by 1, 2, 3;