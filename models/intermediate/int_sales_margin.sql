SELECT 
    s.date_date,
    p.products_id AS product_id,
    p.purchase_price,
    s.revenue,
    s.quantity,
    (p.purchase_price*s.quantity) AS purchase_cost,
    (s.revenue-(p.purchase_price*s.quantity)) AS margin
FROM {{ ref("stg_gz_raw_data__product")}} p
LEFT JOIN  {{ ref("stg_gz_raw_data__sales")}} s
ON p.products_id = s.product_id



