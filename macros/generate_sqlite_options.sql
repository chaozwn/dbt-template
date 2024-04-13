{% macro generate_jdbc_options() %}
    {{
        return(
            {
                "url": var("url", "jdbc:sqlite:./database/main.db"),
                "driver": "org.sqlite.JDBC",
                "dbtable": "main." ~ this.name,
            }
        )
    }}
{% endmacro %}
