{# This macro generates YAML. We wrap it in a SQL comment block to make it valid SQL #}
/*
{{ codegen.generate_model_yaml(
    model_names=['stg_tpch_orders']
) }}
*/