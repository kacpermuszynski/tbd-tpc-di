SELECT 
    sk_customer_id, 
    sk_account_id,
    COUNT(*) cnt
FROM {{ ref('fact_cash_balances') }} 
WHERE description IS NULL
GROUP BY sk_customer_id, sk_account_id
HAVING cnt > 0