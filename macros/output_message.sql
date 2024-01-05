{% macro output_message(msg) %}
create or replace procedure EXERCISE_DB.SCHEMA_DEV.output_message(message varchar)
returns varchar not null
language sql
as
begin
  return message;
end;

call EXERCISE_DB.SCHEMA_DEV.output_message(msg);
{% endmacro %}