{% macro generate_jdbc_options() %}
    {{
        return(
            {
                "url": var("url"),
                "driver": "org.sqlite.JDBC",
                "dbtable": "main." ~ this.name,
            }
        )
    }}
{% endmacro %}
