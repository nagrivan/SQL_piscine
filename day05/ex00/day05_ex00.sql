create index if not exists idx_pizzeria_id
on pizzeria (id)
with (fillfactor = 90);

create index if not exists idx_person_id
on person (id)
with (fillfactor = 90);

create index if not exists idx_menu_id
on menu (id)
with (fillfactor = 90);

create index if not exists idx_menu_pizzeria_id
on menu (pizzeria_id)
with (fillfactor = 90);

create index if not exists idx_person_visits_id
on person_visits (id)
with (fillfactor = 90);

create index if not exists idx_person_visits_person_id
on person_visits (person_id)
with (fillfactor = 90);

create index if not exists idx_person_visits_pizzeria_id
on person_visits (pizzeria_id)
with (fillfactor = 90);

create index if not exists idx_person_order_id
on person_order (id)
with (fillfactor = 90);

create index if not exists idx_person_order_person_id
on person_order (person_id)
with (fillfactor = 90);

create index if not exists idx_person_order_menu_id
on person_order (menu_id)
with (fillfactor = 90);

-- drop index idx_pizzeria_id;