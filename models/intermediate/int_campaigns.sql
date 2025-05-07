select
* 
from {{ref("stg_raw__adwords")}} as adwords
UNION ALL
select
* 
from {{ref("stg_raw__bing")}} as bing
UNION ALL
select
* 
from {{ref("stg_raw__criteo")}} as criteo
UNION ALL
select
* 
from {{ref("stg_raw__facebook")}} as facebook