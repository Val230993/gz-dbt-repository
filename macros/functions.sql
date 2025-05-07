{% macro margin_percent(revenue, purchase_cost) %}
    ({{ revenue }} - {{ purchase_cost }}) / NULLIF({{ revenue }}, 0)
{% endmacro %}