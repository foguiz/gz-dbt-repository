with
    op_margin as (select * from {{ref("int_orders_operational")}})
    {#,sales as (select * from {{ref("int_sales_margin")}})#}
select
    op_margin.date_date
    ,count(orders_id) nb_transactions
    ,round(sum(order_revenue), 0) revenue
    ,round(avg(order_revenue),1) average_basket
    ,round(sum(order_margin),0) margin
    ,round(sum(operational_margin),0) operational_margin
    ,round(sum(order_purchase_cost)) total_purchase_cost
    ,round(sum(shipping_fee),2) total_shipping_fees
    ,round(sum(log_cost),2) total_log_costs
    ,round(sum(ship_cost),0) ship_cost
    ,sum(quantity) nb_products_total
from op_margin

group by date_date
order by date_date DESC