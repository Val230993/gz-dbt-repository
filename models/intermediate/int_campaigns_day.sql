select 
    date_date,
    round(sum(ads_cost),1) as ads_cost,
    round(sum(impression)) as ads_impression,
    round(sum(click)) as ads_clicks
from {{ref("int_campaigns")}}
GROUP BY date_date
order BY date_date desc