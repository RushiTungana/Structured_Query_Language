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