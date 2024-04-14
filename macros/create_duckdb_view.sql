{% macro create_duckdb_view(database, table_name) %}
CREATE OR REPLACE TEMPORARY VIEW  {{ table_name }}_temp
USING JDBC
OPTIONS (
    'url' = '{{ var("duckdb_url") }}',
    'driver' = 'org.duckdb.DuckDBDriver',
    'dbtable' = '{{ database }}.{{ table_name }}'
);
{% endmacro %}
