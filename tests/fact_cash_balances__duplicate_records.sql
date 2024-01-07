SELECT 
    sk_customer_id, 
    sk_account_id,
    sk_transaction_date,
    description,
    COUNT(*) cnt
FROM {{ ref('fact_cash_balances') }} 
GROUP BY sk_customer_id, sk_account_id, sk_transaction_date, description
HAVING cnt > 1