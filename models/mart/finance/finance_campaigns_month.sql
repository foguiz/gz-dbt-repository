select
    date_trunc(date_date, month) datemonth
    ,round(sum(ads_margin), 2) ads_margin
    ,round(sum(average_basket), 2) average_basket
    ,round(sum(operational_margin), 2) operational_margin
    ,round(sum(ads_cost), 2) ads_cost
    ,round(sum(ads_impressions), 2) ads_impressions
    ,round(sum(ads_clicks), 2) ads_clicks
    ,round(sum(quantity), 2) quantity
    ,round(sum(revenue), 2) revenue
    ,round(sum(purchase_cost), 2) purchase_cost
    ,round(sum(margin), 2) margin
    ,round(sum(shipping_fee), 2) shipping_fee
    ,round(sum(logcost), 2) logcost
    ,round(sum(ship_cost), 2) ship_cost
from {{ref("finance_campaigns_day")}}
group by datemonth
