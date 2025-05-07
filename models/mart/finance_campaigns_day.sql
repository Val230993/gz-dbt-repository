---Join int_campaigns_day with finance_days. 
---Compute ads_margin = operational_margin - ads_cost

select 
    i.date_date,
    round(sum(operational_margin),1) - round(sum(ads_cost),1) as ads_margin,
    round(sum(f.average_basket),1) as average_basket,
    round(sum(f.operational_margin),1) as operational_margin,
    round(sum(i.ads_cost),1) as ads_cost,
    round(sum(i.ads_impression),1) as ads_impression,
    round(sum(i.ads_clicks),1) as ads_clicks,
    round(sum(f.quantity),1) as quantity,
    round(sum(f.revenue),1) as revenue,
    round(sum(f.purchase_cost),1) as purchase_cost,
    round(sum(f.margin),1) as margin,
    round(sum(f.shipping_fee),1) as shipping_fee,
    round(sum(f.logcost),1) as log_cost,
    round(sum(f.ship_cost)) as ship_cost
from {{ref("int_campaigns_day")}} i
join {{ref("finance_days")}} f
    on i.date_date = f.date_date
group by i.date_date

