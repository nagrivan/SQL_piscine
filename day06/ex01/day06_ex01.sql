insert into person_discounts (		(select row_number() over () as id), 
									(select po.person_id, count () as am_per_id
									from person_order as po
									group by po.person_id),
									(select menu.pizzeria_id, count (menu.id) as am_piz_id
									from person_order as po 
									join menu on po.menu_id = menu.id
									group by menu.pizzeria_id),
									10);
									
insert into person_discounts values ((select row_number() over (order by id) as id from person_discounts),
									(select count (menu.pizzeria_id)
									from person_order as po 
									join menu on po.menu_id = menu.id
									group by po.person_id, menu.pizzeria_id),
									10);


select * from person_discounts;