USE cdg_hyd_jfs_058;

SELECT * FROM customers;

INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES ('CUST26001', 'Ananya', 'Iyer', 'ananya.iyer@example.test', 9876502001, '1995-04-11', 'Bengaluru', 'Karnataka', '560001', 'PREMIUM', 75000.00, TRUE);

INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES ('CUST26002', 'Rohan', 'Das', 'rohan.das@example.test', NULL, NULL, 'Kolkata', 'West Bengal', '700001', 'REGULAR', 0.00, TRUE);

INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES ('CUST26003', 'Meera', 'Shah', 'meera.shah@example.test', 9876502003, '1992-08-24', 'Mumbai', 'Maharashtra', '400001', 'CORPORATE', 250000.00, TRUE),
('CUST26004', 'Arjun', 'Reddy', 'aarjun.reddy@example.test', 9876502004, '1988-01-19', 'Hyderabad', 'Telangana', '500001', 'PREMIUM', 100000.00, TRUE),
('CUST26005', 'Nisha', 'Menon', 'nisha.menon@example.test', NULL, NULL, 'Kochi', 'Kerala', '682001', 'REGULAR', 0.00, FALSE);

-- duplicate email
INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES ('CUST26006', 'Rahul', 'Ramakrishna', 'rahul@example.test', 9876502006, NULL, 'gajapathi', 'odisha', '800001', 'REGULAR', 0.00, TRUE);

-- negative credit limit
INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES ('CUST26006', 'Rahul', 'Ramakrishna', 'rahul@example.test', 9876502006, NULL, 'gajapathi', 'odisha', '800001', 'REGULAR', -10.00, TRUE);


UPDATE customers SET credit_limit = credit_limit*1.01 WHERE customer_type = 'PREMIUM';

UPDATE customers SET phone = 9876502002 WHERE customer_code = 'CUST26002';

UPDATE customers SET city = 'Secunderabad', postal_code = 500003 WHERE customer_code = 'CUST26004';

UPDATE customers SET credit_limit = 275000.00 WHERE customer_code = 'CUST26003';

UPDATE customers set phone = 9876502003 WHERE customer_code = 'CUST26002';

SELECT * FROM customers WHERE is_active = FALSE;
DELETE FROM customers WHERE is_active = FALSE;


DELETE FROM customers WHERE customer_code = 'CUST-TEMP-01';
INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES ('CUST-TEMP-01', 'Mythri', 'Raju', 'mythiri@example.test', 9876502007, NULL, 'Bhopal', 'Madhya Pradesh', '800001', 'GOLD', 0.00, TRUE);
SELECT * FROM customers WHERE customer_code = 'CUST-TEMP-01';