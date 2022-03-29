Set enable_seqscan to off;

explain analyze (select pizza_name, from menu join pizzeria on pizzeria.id)

explain analyze select id from pizzeria;

explain analyze select id from person;

explain analyze select id from menu;
explain analyze select pizzeria_id from menu;

explain analyze select id from person_visits;
explain analyze select person_id from person_visits;
explain analyze select pizzeria_id from person_visits;

explain analyze select id from person_order;
explain analyze select person_id from person_order;
explain analyze select menu_id from person_order;
