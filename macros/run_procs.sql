{% macro run_procs() %}
  {% do run_query("call tmp_proc();") %}
{% endmacro %}