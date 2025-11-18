{# Changed from 'error' to 'warn' to use as a demo for testing capabilities
   This test checks if return rate > 50% in the most recent month
   When it fails (returns rows), it indicates high return rates
   Use this to demonstrate: test failures, investigating data quality issues, and adjusting thresholds #}
{{
    config(
        enabled=true,
        severity='warn',
    )
}}

with agg_returned_orders_by_month as ( select * from {{ ref('agg_returned_orders_by_month') }} )

select *
from agg_returned_orders_by_month
where order_month = (select max(order_month) from agg_returned_orders_by_month)
and return_rate > 0.50 

