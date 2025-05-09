---Operational_margin = margin + shipping_fee - log_cost - ship_cost

SELECT
m.date_date,
m.margin,
s.shipping_fee,
s.ship_cost,
s.logcost,
s.orders_id,
m.purchase_cost,
m.revenue,
m.quantity,
(m.margin + s.shipping_fee - s.ship_cost - s.logcost) AS operational_margin
FROM {{ ref("stg_gz_raw_data__ship")}} s
LEFT JOIN {{ ref("int_sales_margin")}} m
USING (orders_id)