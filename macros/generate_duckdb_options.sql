{% macro generate_duckdb_options() %}
    {{
        return(
            {
                "url": var("duckdb_url"),
                "driver": "org.duckdb.DuckDBDriver",
                "dbtable": "duckdb." ~ this.name,
            }
        )
    }}
{% endmacro %}
