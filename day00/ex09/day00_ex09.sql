SELECT (select name
	   from person
	   where id = t1.person_id) AS person_name ,  -- this is an internal query in a main SELECT clause
        (select name
		from pizzeria
		where id = t1.pizzeria_id) AS pizzeria_name  -- this is an internal query in a main SELECT clause
FROM (SELECT visit_date, person_id, pizzeria_id FROM person_visits) AS t1 -- this is an internal query in a main FROM clause
WHERE visit_date between '2022-01-07' and '2022-01-09'
order by person_name, pizzeria_name desc; 