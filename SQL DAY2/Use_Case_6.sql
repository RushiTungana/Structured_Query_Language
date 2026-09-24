CREATE DATABASE cg_hyd_jfs_058;
use cg_hyd_jfs_058;
CREATE TABLE Employee(empid int,emp_firstname VARCHAR(20),emp_lastname VARCHAR(20),date_of_joining DATE);

SELECT* FROM Employee;
drop TABLE Employee;

CREATE TABLE employee(empid int,emp_firstname VARCHAR(20),emp_lastname VARCHAR(20),date_of_joining DATE);
SELECT* FROM employee;
INSERT into employee(empid ,emp_firstname,emp_lastname ,date_of_joining) VALUES(108,'Rudra','kesav','2026-09-27');
INSERT into employee(empid ,emp_firstname,emp_lastname ,date_of_joining) VALUES(109,'Hemanth','kuppili','2026-08-27');
INSERT into employee(empid ,emp_firstname,emp_lastname ,date_of_joining) VALUES(110,'Sujay','thamana','2026-09-25');
INSERT into employee(empid ,emp_firstname,emp_lastname ,date_of_joining) VALUES(111,'adhi','kesava','2026-09-29');
INSERT into employee(emp_firstname,emp_lastname ) VALUES('Uday','Tungana');





-- USECASE-1 : DAY2

CREATE TABLE STUDENT (student_id INT PRIMARY KEY,admission_number VARCHAR(15) UNIQUE KEY,first_name VARCHAR(50),last_name VARCHAR(50),email VARCHAR(120) UNIQUE KEY,phone VARCHAR(15), date_of_birth DATE,program_name VARCHAR(100),admission_date DATE,cgpa DECIMAL(4,2),student_status VARCHAR(15), created_at TIMESTAMP,update_at TIMESTAMP);
drop TABLE STUDENT;

CREATE TABLE students (
    student_id INT NOT NULL,
    admission_number VARCHAR(15) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE NOT NULL,
    program_name VARCHAR(100) NOT NULL,
    admission_date DATE NOT NULL,
    cgpa DECIMAL(4, 2) NOT NULL,
    student_status VARCHAR(15) NOT NULL DEFAULT 'Active',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_students` PRIMARY KEY (student_id),
	CONSTRAINT `uq_admission_number` UNIQUE (admission_number),
	CONSTRAINT `uq_email` UNIQUE (email),
	CONSTRAINT `chk_cgpa` CHECK (cgpa BETWEEN 0.00 AND 10.00)
);

INSERT INTO students(student_id,
admission_number,
first_name,
last_name,
email,
phone,
date_of_birth,
program_name,
admission_date,
cgpa,
student_status,
created_at,
updated_at ) VALUES (4030,'CG1035681','Rudra','Tungana','rudrakesav7@gmail.com',7702374960,'2005-06-27','JAVA FULL STACK','2026-07-22',8.59,default,default,default);
Drop TABLE students;

INSERT INTO students(student_id,
admission_number,
first_name,
last_name,
email,
phone,
date_of_birth,
program_name,
admission_date,
cgpa,
student_status,
created_at,
updated_at ) VALUES (4030,'CG1035682','Akshya','jenna','jennaakshaya8@gmail.com',9583617990,'2005-12-27','PYTHON FULL STACK','2026-06-25',9.19,default,default,default);



SELECT*from students;

Drop TABLE students;


-- Homework-useCases 
use cg_hyd_jfs_058;
CREATE TABLE products(
    product_id INT NOT NULL AUTO_INCREMENT,
    sku VARCHAR(20) NOT NULL,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(80) NOT NULL,
    brand VARCHAR(80),
    unit_price DECIMAL(12,2) NOT NULL CHECK (unit_price>0),
    quantity_in_stock INT UNSIGNED NOT NULL DEFAULT 0 CHECK(quantity_in_stock>=0) ,
    reorder_level INT UNSIGNED DEFAULT 5 NOT NULL CHECK(reorder_level>=0) ,
    manufacture_date DATE,
    expiry_date DATE,
    product_status VARCHAR(15) NOT NULL DEFAULT 'Active',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_product_id` PRIMARY KEY (product_id),
	CONSTRAINT `uq_sku` UNIQUE (sku),
    CONSTRAINT `chk_expiry_date` CHECK ( expiry_date IS NULL OR manufacture_date IS NULL OR expiry_date >= manufacture_date)
);
SELECT*from products;
INSERT INTO products
(sku, product_name, category, brand, unit_price,
 quantity_in_stock, reorder_level, manufacture_date,
 expiry_date, product_status)
VALUES
('SKU1001', 'Milk Powder', 'Dairy', 'Amul', 450.00,
 25, 5, '2026-08-01', '2027-08-01', 'ACTIVE');

 INSERT INTO products
(sku, product_name, category, unit_price,
 quantity_in_stock, reorder_level, product_status)
VALUES
('SKU1003', 'Invalid Product', 'Test', -100.00,
 10, 5, 'ACTIVE');

 SELECT*from products;

--  usecase-3
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


--  usecase4
CREATE TABLE books (
    book_id INT NOT NULL AUTO_INCREMENT,
    isbn CHAR(13) NOT NULL,
    title VARCHAR(200) NOT NULL,
    author_name VARCHAR(120) NOT NULL,
    genre VARCHAR(60) NOT NULL,
    publisher VARCHAR(120),
    publication_year SMALLINT NOT NULL,
    page_count SMALLINT NOT NULL,
    book_format ENUM('HARDCOVER', 'PAPERBACK', 'EBOOK') NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    copies_available INT NOT NULL,
    language VARCHAR(40) NOT NULL DEFAULT 'English',
    added_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_book_id`
        PRIMARY KEY (book_id),
    CONSTRAINT `uq_isbn`
        UNIQUE (isbn),
    CONSTRAINT `chk_isbn`
        CHECK (CHAR_LENGTH(isbn) = 13),
    CONSTRAINT `chk_publication_year`
        CHECK (publication_year BETWEEN 1000 AND 2100),
    CONSTRAINT `chk_page_count`
        CHECK (page_count > 0),
    CONSTRAINT `chk_price`
        CHECK (price >= 0),
    CONSTRAINT `chk_copies_available`
        CHECK (copies_available >= 0)
);
SELECT * FROM books;
INSERT INTO books (
    isbn,
    title,
    author_name,
    genre,
    publisher,
    publication_year,
    page_count,
    book_format,
    price,
    copies_available
)
VALUES (
    '9780132350884',
    'persevarnece',
    'Rudrakesav',
    'Sci-fi',
    'MythriPublications',
    2028,
    481,
    'PAPERBACK',
    499.00,
    7
);
INSERT INTO books (
    isbn,
    title,
    author_name,
    genre,
    publisher,
    publication_year,
    page_count,
    book_format,
    price,
    copies_available
)
VALUES (
    '9780132323680j',
    'Cant hurt me ',
    'Devid goggins',
    'Motivation',
    'san-Publications',
    2021,
    800,
    'AUDIOBOOK',
    999.00,
    18
);
SELECT * FROM books;

-- usecase5

CREATE TABLE patients (
    patient_id INT NOT NULL AUTO_INCREMENT,
    patient_number VARCHAR(15) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    biological_sex ENUM(
        'FEMALE',
        'MALE',
        'INTERSEX',
        'NOT_DISCLOSED'
    ) NOT NULL,
    blood_group ENUM(
        'A+',
        'A-',
        'B+',
        'B-',
        'AB+',
        'AB-',
        'O+',
        'O-' ),
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(120),
    emergency_contact_name VARCHAR(100) NOT NULL,
    emergency_contact_phone VARCHAR(15) NOT NULL,
    allergies TEXT,
    patient_status ENUM(
        'ACTIVE',
        'INACTIVE',
        'DECEASED'
    ) NOT NULL DEFAULT 'ACTIVE',
    registered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_patient_id` PRIMARY KEY (patient_id),
    CONSTRAINT `uq_patient_number` UNIQUE (patient_number)
);

INSERT INTO patients (
    patient_number,
    first_name,
    last_name,
    date_of_birth,
    biological_sex,
    blood_group,
    phone,
    email,
    emergency_contact_name,
    emergency_contact_phone,
    allergies
)
VALUES (
    'PAT0001',
    'vinuthna',
    'Reddy',
    '2000-12-22',
    'FEMALE',
    'O+',
    '9000000001',
    'vinuthna@gmail.com',
    'Laxman Reddy',
    '9000000009',
    'None'
);
SELECT * FROM patients;

-- usecase6
CREATE TABLE bank_accounts (
    account_id INT AUTO_INCREMENT,
    account_number CHAR(12) NOT NULL,
    account_holder_name VARCHAR(120) NOT NULL,
    account_type VARCHAR(20) NOT NULL,
    balance DECIMAL(15, 2) NOT NULL DEFAULT 0.00,
    currency_code CHAR(3) NOT NULL DEFAULT 'INR',
    branch_name VARCHAR(100) NOT NULL,
    opened_date DATE NOT NULL,
    interest_rate DECIMAL(5, 2) NOT NULL DEFAULT 0.00,
    overdraft_limit DECIMAL(12, 2) NOT NULL DEFAULT 0.00,
    account_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_account_id` PRIMARY KEY (account_id),
    CONSTRAINT `uq_account_number` UNIQUE (account_number),
    CONSTRAINT `chk_balance_non_negative` CHECK (balance >= 0),
    CONSTRAINT `chk_overdraft_non_negative` CHECK (overdraft_limit >= 0),
    CONSTRAINT `chk_intrest_rate_range` CHECK (interest_rate BETWEEN 0.00 AND 100.00)
);

INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, branch_name, opened_date, interest_rate)
VALUES ('1010', 'Ramu', 'SAVINGS', 1000.50, 'Vijayanagaram', '2026-01-15', 2.77);

INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, branch_name, opened_date, overdraft_limit)
VALUES ('1020', 'Uday', 'CURRENT', 1500.00, 'VIZAG', '2026-03-22', 500.00);

INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, branch_name, opened_date, interest_rate)
VALUES ('1030', 'Sidhu', 'FIXED_DEPOSIT', 45000.00, 'Srikakulam', '2026-06-01', 1.25);

SELECT * FROM bank_accounts;
