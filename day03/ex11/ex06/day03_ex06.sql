with
pizz1 (pizza_name, pizzeria_name, price) as
(
	select pizza_name, pizzeria.name as pizzeria_name, price
	from menu join pizzeria on pizzeria.id = menu.pizzeria_id
),
pizz2 (pizza_name, pizzeria_name, price) as
(
	select pizza_name, pizzeria.name as pizzeria_name, price
	from menu join pizzeria on pizzeria.id = menu.pizzeria_id
)

select pizz1.pizza_name, pizz1.pizzeria_name as pizzeria_name_1, pizz2.pizzeria_name as pizzeria_name_2, pizz1.price
from pizz1, pizz2
where 	pizz1.pizza_name = pizz2.pizza_name
		and pizz1.price = pizz2.price
		and pizz1.pizzeria_name != pizz2.pizzeria_name
order by 1;