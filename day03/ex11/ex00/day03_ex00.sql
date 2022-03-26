select menu.pizza_name, menu.price, pizzeria.name as pizzeria_name, pv.visit_date
from pizzeria
join person_visits as pv on pizzeria.id = pv.pizzeria_id
join person on pv.person_id = person.id
join menu on menu.pizzeria_id = pizzeria.id
where person.name = 'Kate' and menu.price between 800 and 1000
order by menu.pizza_name, menu.price, pizzeria.name;