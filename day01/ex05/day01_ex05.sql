select 
	per.id as "person.id",
	per.name as "person.name",
	age, gender, address,
	pizz.id as "pizzeria.id",
	pizz.name as "pizzeria.name",
	rating
from person as per, pizzeria as pizz
order by per.id, pizz.id;