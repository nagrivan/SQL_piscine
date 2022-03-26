with t1(menu_id) as
(
	select id as menu_id
	from menu
	except
	select menu_id
	from person_order
)
select pizza_name, price, pizz.name as pizzeria_name
from menu
join t1 on t1.menu_id = menu.id
join pizzeria as pizz on menu.pizzeria_id = pizz.id
order by 1, 2;