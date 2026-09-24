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