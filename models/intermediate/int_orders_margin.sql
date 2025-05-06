select
    date_date
    ,orders_id
    ,round(sum(revenue),2) order_revenue
    ,round(sum(purchase_cost),2) order_purchase_cost
    ,round(sum(margin),2) order_margin
from {{ref('int_sales_margin')}}
group by date_date, orders_id