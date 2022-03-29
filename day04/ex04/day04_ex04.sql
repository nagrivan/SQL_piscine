create or replace view inv_symmetric_union as
select * from
(with tab1 AS (select * -- R-S
              from (select * from person_visits where visit_date = '2022-01-02') as R
              except
              select * from person_visits where visit_date = '2022-01-06'),
tab2 AS (select * -- S-R
        from (select * from person_visits where visit_date = '2022-01-06') as S
        except
        select * from person_visits where visit_date = '2022-01-02')
select *
from tab1
union select * from tab2
order by person_id) as v;

select * from inv_symmetric_union;