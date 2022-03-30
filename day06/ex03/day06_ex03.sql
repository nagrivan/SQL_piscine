Set enable_seqscan to off;

create unique index if not exists idx_person_discounts_unique
on person_discounts (person_id, pizzeria_id);

explain analyze * from persom_discounts;