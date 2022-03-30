create table if not exists person_discounts (
	id bigint primary key,
	person_id bigint,
	pizzeria_id bigint,
	value_discounts float,
	constraint fk_person_discounts_person_id foreign key (person_id) references person (id),
	constraint fk_person_discounts_pizzeria_id foreign key (pizzeria_id) references pizzeria (id)
)