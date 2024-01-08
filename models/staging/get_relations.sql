{{ dbt_utils.log_info('Starting to gather references to INFORMATION_SCHEMA') }} 
{% set relations = dbt_utils.get_relations_by_pattern('SCHEMA_DEV','%%') %}

{% for relation in relations %}
    {{ log("Found relation: " ~ relation, info=True) }}
{% endfor %}
{% for node in graph.nodes.values() | selectattr("resource_type", "equalto", "model")%} 
  {{ log("Found models: " ~ node.schema~' '~node.name~' '~node.config.materialized, info=True) }}
{% endfor %}
{% for node in graph.sources.values() -%}
    {{ log("Found sources: " ~ node.source_name~' '~node.name, info=True) }}
{% endfor %}
select 1 as id
