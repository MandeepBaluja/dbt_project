select
    customer_name,
    sum(amount) as total_revenue,
    count(order_id) as total_orders
from {{ ref('stg_order') }}
group by customer_name