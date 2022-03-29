Set enable_seqscan to off;

create unique index if not exists idx_menu_unique on menu (pizzeria_id, pizza_name);

explain analyze select pizzeria_id, pizza_name
from menu;