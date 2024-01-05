with final as(
    select * from {{source('marts_source', 'names')}}
)
select * from final