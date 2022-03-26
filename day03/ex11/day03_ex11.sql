select *
from menu;

update menu
set price = (round((select price from menu where pizza_name = 'greek pizza') / 100 * 90))
where pizza_name = 'greek pizza';