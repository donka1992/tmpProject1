with final as(
    select * from {{source('staging_source', 'names')}}
)
select * from final