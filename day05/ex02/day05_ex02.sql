Set enable_seqscan to off;

create index if not exists idx_person_name
on person ((upper(name)));

explain analyze select name from person where upper(name) like '%';