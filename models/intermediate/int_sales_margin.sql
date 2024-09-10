SELECT *,
quantity * purchase_price AS purchase_cost,
revenue - (quantity * purchase_price) AS margin
FROM {{ ref('stg_raw__product') }}
JOIN {{ ref('stg_raw__sales') }}
ON stg_raw__product.products_id = stg_raw__sales.product_id