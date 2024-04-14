{% macro create_sqlite_view(database, table_name) %}

CREATE TEMPORARY VIEW  {{ table_name }}_temp
USING JDBC
OPTIONS (
    'url' = '{{ var("url") }}',
    'driver' = 'org.sqlite.JDBC',
    'dbtable' = '{{ database }}.{{ table_name }}'
);

{% endmacro %}
