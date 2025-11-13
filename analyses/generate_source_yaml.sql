{# This macro generates YAML. We wrap it in a SQL comment block to make it valid SQL #}
/*
{{ codegen.generate_source(
    schema_name='tpch_sf001',
    database_name='raw',
    table_names=["orders", "customer","lineitem"],
    generate_columns=True,
    include_descriptions=False,
    name='tpch'
) }}
*/

