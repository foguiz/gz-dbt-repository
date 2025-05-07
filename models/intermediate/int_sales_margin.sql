select
    date_date
    ,orders_id
    ,product_id
    ,quantity
    ,revenue
    ,(quantity * purchase_price ) purchase_cost
    ,round(revenue - (quantity * purchase_price),2) margin
from {{ref('stg_raw__sales')}} s
inner join {{ref('stg_raw__product')}} p on (s.product_id=p.products_id)