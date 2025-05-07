select
    date_date
    ,round(sum(ads_cost), 0) ads_cost
    ,round(sum(impression), 0) ads_impressions
    ,round(sum(click), 0) ads_clicks
from {{ref("int_campaigns")}}
group by date_date
order by date_date desc