WITH table_1 (pizzeria_name) AS
    (
        SELECT pz.name AS pizziria_name FROM person p
    JOIN person_visits pv ON p.id = pv.person_id
    JOIN pizzeria pz ON pv.pizzeria_id = pz.id
        WHERE p.gender = 'male'
    ),
     table_2 (pizzeria_name) AS
    (
        SELECT pz.name AS pizziria_name FROM person p
    JOIN person_visits pv ON p.id = pv.person_id
    JOIN pizzeria pz ON pv.pizzeria_id = pz.id
        WHERE p.gender = 'female'
    )
SELECT pizzeria_name FROM
((SELECT pizzeria_name FROM table_1 EXCEPT ALL (SELECT pizzeria_name FROM table_2))
UNION ALL
(SELECT pizzeria_name FROM table_2 EXCEPT ALL (SELECT pizzeria_name FROM table_1)))
AS tab
ORDER BY 1;