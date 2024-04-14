{% macro create_csv_view(file_name, delimiter) %}
CREATE OR REPLACE TEMPORARY VIEW  {{ this.name }}_view
USING CSV
OPTIONS (
    header='true',
    inferSchema='true',
    sep='{{ delimiter }}',
    path='{{ var("data_path") }}/{{ file_name }}'
)
{% endmacro %}
