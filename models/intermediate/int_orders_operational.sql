select
    om.orders_id
    ,om.date_date
    ,om.order_revenue
    ,om.order_margin
    ,shipping_fee
    ,log_cost
    ,ship_cost
    ,round((om.order_margin + shipping_fee-log_cost-ship_cost),2) operational_margin
from {{ref('int_orders_margin')}} om
join {{ref('stg_raw__ship')}} s using (orders_id)