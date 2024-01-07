SELECT 
    sk_trade_id, 
    COUNT(*) cnt
FROM {{ ref('dim_trade') }} 
WHERE IS_CURRENT = True AND end_timestamp IS NULL
GROUP BY sk_trade_id
HAVING cnt > 0