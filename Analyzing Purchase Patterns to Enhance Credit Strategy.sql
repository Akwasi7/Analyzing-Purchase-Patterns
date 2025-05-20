USE customer_analytics;

SELECT 
    customers.customer_id, 
    customers.name, 
    SUM(transactions.amount) AS total_spent
FROM 
    customers
JOIN 
    transactions ON customers.customer_id = transactions.customer_id
GROUP BY 
    customers.customer_id, customers.name
ORDER BY 
    total_spent DESC;
    
    
SELECT 
    DATE_FORMAT(transaction_date, '%Y-%m') AS month,
    SUM(amount) AS total_spent
FROM 
    transactions
GROUP BY 
    month
ORDER BY 
    month;
    
    
SELECT 
    m.merchant_name, 
    SUM(t.amount) AS total_revenue
FROM 
    transactions t
JOIN 
    merchants m ON t.merchant_id = m.merchant_id
GROUP BY 
    m.merchant_name
ORDER BY 
    total_revenue DESC
LIMIT 5;


SELECT *
FROM transactions
WHERE amount > 450;

SELECT 
    customer_id,
    CASE
        WHEN SUM(amount) < 1000 THEN 'Low Spender'
        WHEN SUM(amount) BETWEEN 1000 AND 3000 THEN 'Medium Spender'
        ELSE 'High Spender'
    END AS spending_category
FROM 
    transactions
GROUP BY 
    customer_id;



