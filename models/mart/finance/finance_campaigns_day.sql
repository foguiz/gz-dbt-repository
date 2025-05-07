with
finance as (select * from {{ref("finance_days")}}),
campaign as (select * from {{ref("int_campaigns_day")}})

select
    campaign.date_date
    ,round(finance.operational_margin - campaign.ads_cost, 2) ads_margin
    ,campaign.ads_cost
    ,campaign.ads_impressions
    ,campaign.ads_clicks
    ,finance.nb_products_total
    ,finance.revenue
    ,finance.total_purchase_cost
    ,finance.margin
    ,finance.total_shipping_fees
    ,finance.total_log_costs
    ,finance.ship_cost
from campaign
inner join finance using (date_date)
order by campaign.date_date DESC