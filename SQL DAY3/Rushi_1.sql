CREATE TABLE STUDENT (student_id INT PRIMARY KEY,admission_number VARCHAR(15) UNIQUE KEY,first_name VARCHAR(50),last_name VARCHAR(50),email VARCHAR(120) UNIQUE KEY,phone VARCHAR(15), date_of_birth DATE,program_name VARCHAR(100),admission_date DATE,cgpa DECIMAL(4,2),student_status VARCHAR(15), created_at TIMESTAMP,update_at TIMESTAMP);
drop TABLE STUDENT;

CREATE TABLE students (
    student_id INT NOT NULL AUTO_INCREMENT,
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

INSERT INTO students(
admission_number,
first_name,
last_name,
email,
phone,
date_of_birth,
program_name,
admission_date,
cgpa) VALUES ('STU26C001',	'Ananya','Rao','ananya.rao@example.test',9876501001	,'2007-04-18','BSc Computer Science','2026-07-01',8.40),
('STU26C002','Vivaan','Sharma','vivaan.sharma@example.test	',NULL,	'2006-12-09','BCom','2026-07-01',7.75),
('STU26C003','Diya','Nair','diya.nair@example.test',9876501003	,'2007-02-25',	'BA Economics',	'2026-07-02',9.10);

INSERT INTO students(
admission_number,
first_name,
last_name,
email,
phone,
date_of_birth,
program_name,
admission_date,
cgpa,student_status) VALUES ('STU25C004','Kabir','Singh	','kabir.singh@example.test',9876501004,'2006-08-14','BSc Mathematics','	2025-07-01',	6.85,	'SUSPENDED'),
('STU24C005','Tara','Bose','tara.bose@example.test',9876501005,	'2005-09-30	','BA History','2024-07-01',5.90,'DROPPED');
SELECT* FROM students;
INSERT INTO students(
admission_number,
first_name,
last_name,
email,
phone,
date_of_birth,
program_name,
admission_date,
cgpa,student_status) VALUES ('STU25C005','arjun','reddy	','kabir.tu@example.test',9876501009,'2006-08-15','BSc Mathematics','	2025-07-01',	9.9,	'TRANSFERED');

UPDATE students SET cgpa=8.65 WHERE admission_number='STU26C001';
SELECT* FROM students;
UPDATE students SET student_status='ACTIVE' WHERE student_status='SUSPENDED';
UPDATE students SET program_name = 'BCom Finance' WHERE program_name = 'BCom';
UPDATE students SET email = 'student@example.com' WHERE admission_number = 'STU26C003';

INSERT INTO students(
admission_number,
first_name,
last_name,
email,
phone,
date_of_birth,
program_name,
admission_date,
cgpa,student_status) VALUES ('STU-TEMP-001','raju','babu	','raju@example.test',9876501994,'2006-09-14','BSc Mathematics','	2025-07-11',	8.85,	'SUSPENDED');
SELECT* FROM students;
DELETE FROM students where admission_number='STU-TEMP-001';


DELETE FROM students WHERE student_status = 'DROPPED';

