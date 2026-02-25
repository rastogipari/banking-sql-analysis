CREATE TABLE customers (customer_id SERIAL PRIMARY KEY,
                        customer_name VARCHAR(100),
						city VARCHAR(50),
						join_date DATE);



CREATE TABLE accounts (account_id SERIAL PRIMARY KEY,
                       customer_id INT REFERENCES customers(customer_id),
					   account_type VARCHAR(20),
					   balance NUMERIC(10,2));



CREATE TABLE transactions (transaction_id SERIAL PRIMARY KEY,
                           account_id INT REFERENCES accounts(account_id),
						   transaction_date DATE,
						   transaction_type VARCHAR(20),
						   ammount NUMERIC(10,2));



CREATE TABLE loans (loan_id SERIAL PRIMARY KEY,
                    customer_id INT REFERENCES customers(customer_id),
					loan_amount NUMERIC(10,2),
					loan_status VARCHAR(20));