
{% macro identifier(value) %}
  {{ adapter_macro('dbt_utils_sqlserver.identifier', value) }}
{% endmacro %}

{% macro default__identifier(value) -%}
    "{{ value }}"
{%- endmacro %}

{% macro bigquery__identifier(value) -%}
    `{{ value }}`
{%- endmacro %}