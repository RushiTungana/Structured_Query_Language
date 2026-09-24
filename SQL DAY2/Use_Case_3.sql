CREATE TABLE customers (customer_id INT NOT NULL AUTO_INCREMENT,
                        customer_code VARCHAR(12) NOT NULL,
                        first_name VARCHAR(50)NOT NULL,
                        last_name VARCHAR(50)NOT NULL,
                        email VARCHAR(120) NOT NULL,
                        phone VARCHAR(15),
                        date_of_birth DATE,
                        city VARCHAR(80) NOT NULL,
                        state VARCHAR(80) NOT NULL,
                        postal_code VARCHAR(12) NOT NULL,
                        customer_type VARCHAR (15) NOT NULL DEFAULT 'REGULAR',
                        credit_limit DECIMAL(12, 2) NOT NULL DEFAULT 0.00
                        CHECK (credit_limit >= 0),
                        is_active BOOLEAN DEFAULT TRUE,
                        registered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                        CONSTRAINT pk_customer_id
                        PRIMARY KEY (customer_id),
                        CONSTRAINT `uq_customer_code` UNIQUE (customer_code),
                        CONSTRAINT `uq_customer_email` UNIQUE (email),
                         CONSTRAINT `uq_customer_phone` UNIQUE (phone)
                        );
                        SELECT* FROM customers;
INSERT INTO customers
(customer_code, first_name, last_name, email, phone,
 city, state, postal_code)
VALUES
('CUS002', 'Aravindh', 'raj', 'aravindh@gmail.com', NULL,
 'Vijayawada', 'Andhra Pradesh', '520001');

INSERT INTO customers
(customer_code, first_name, last_name, email,
 city, state, postal_code)
VALUES
('CUS005', 'Arjun', 'Reddy', 'arjun@gmail.com',
 'Gajapathi', 'Odisha', '500003');

 SELECT* FROM customers;
