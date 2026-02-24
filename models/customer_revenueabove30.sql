select
    customer_name,
    'Mine'
from {{ ref('customer_revenue') }}
where total_revenue > 30