-- Total Bank Balance
SELECT SUM(balance) AS total_bank_balance
FROM accounts;


-- Total Deposits vs Withdrawal
SELECT transaction_type, SUM(ammount) AS total_amount 
FROM transactions GROUP BY transaction_type;


-- Top Customer by Account Balance
SELECT c.customer_name,a.balance FROM 
customers c JOIN accounts a ON 
c.customer_id=a.customer_id
ORDER BY a.balance DESC
LIMIT 1;


-- Monthly Transaction Trend
SELECT DATE_TRUNC('month',transaction_date) AS month,
SUM(ammount) AS total_amount_balance
FROM transactions
GROUP BY month
ORDER BY month;


-- Rank Customers by Account Balance 
SELECT c.customer_name,a.balance,
RANK() OVER (ORDER BY a.balance DESC) AS balance_rank
FROM customers c JOIN accounts a 
ON c.customer_id = a.customer_id;


-- Detect High Value Transaction 
SELECT transaction_id, ammount, 
CASE 
WHEN ammount > 15000 THEN 'High Transaction'
ELSE 'Normal Transaction'
END AS transaction_flag
FROM transactions;

