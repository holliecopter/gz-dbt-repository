with

int_sales_margin as (
    select *
    from {{ ref('int_sales_margin') }}
)

SELECT
    MAX(date_date) AS date_date,
    orders_id,
    ROUND(SUM(revenue), 2) AS order_revenue,
    ROUND(SUM(quantity)) AS quantity,
    ROUND(SUM(purchase_cost), 2) AS purchase_cost,
    ROUND(SUM(margin), 2) AS margin
FROM int_sales_margin
GROUP BY orders_id
ORDER BY orders_id DESC