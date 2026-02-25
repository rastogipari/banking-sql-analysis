INSERT INTO customers (customer_name,city,join_date) VALUES 
('Amit Sharma','Delhi','2022-01-15'),
('Priya Verma','Mumbai','2022-03-10'),
('Rahul Mehata','Bangalore','2023-05-20'),
('Sneha Kapoor','Delhi','2023-07-25'),
('Arjun Singh','Pune','2024-01-05');


INSERT INTO accounts (customer_id,account_type,balance) VALUES
(1,'Savings',50000),
(2,'Current',75000),
(3,'Savings',30000),
(4,'Savings',45000),
(5,'Current',90000);


INSERT INTO transactions (account_id,transaction_date,transaction_type,ammount) VALUES
(1,'2024-01-10','Deposit',10000),
(1,'2024-02-15','Withdrawal',5000),
(2,'2024-01-20','Deposit',20000),
(3,'2024-03-05','Withdrawal',7000),
(4,'2024-02-18','Deposit',15000),
(5,'2024-03-22','Withdrawal',10000),
(2,'2024-04-01','Withdrawal',8000),
(3,'2024-04-10','Deposit',12000);


INSERT INTO loans (customer_id,loan_amount,loan_status) VALUES 
(1,200000,'Approved'),
(3,150000,'Pending'),
(5,300000,'Approved'),
(2,100000,'Rejected');


SELECT * FROM customers;

SELECT * FROM accounts;

SELECT * FROM transactions;

SELECT * FROM loans;