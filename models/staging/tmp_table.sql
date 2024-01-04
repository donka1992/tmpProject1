with tmp_table as(
select 1 as id, 
       'ivana' as name
union all       
select 2 as id, 
       'maria' as name
)
select * from tmp_table