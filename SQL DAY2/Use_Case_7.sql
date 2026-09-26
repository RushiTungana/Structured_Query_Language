

CREATE TABLE vehicles(
    vehicle_id INT AUTO_INCREMENT NOT NULL,
    registration_number VARCHAR(20) NOT NULL,
    owner_name VARCHAR(120) NOT NULL,
    manufacturer VARCHAR(80) NOT NULL,
    model VARCHAR(80) NOT NULL,
    vehicle_type VARCHAR(20) NOT NULL,
    fuel_type VARCHAR(20) NOT NULL,
    manufacture_year YEAR NOT NULL,
    purchase_date DATE,
    color VARCHAR(40) NOT NULL,
    odometer_km INT NOT NULL DEFAULT 0,
    insurance_expiry DATE,
    vehicle_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_vehicles_vehicle_id PRIMARY KEY (vehicle_id),
    CONSTRAINT uq_registration_number UNIQUE (registration_number),
    CONSTRAINT chk_odometer_km_non_negative CHECK (odometer_km >= 0)
);

SELECT * FROM vehicles;

INSERT INTO vehicles
(registration_number, owner_name, manufacturer, model, vehicle_type,
fuel_type, manufacture_year, purchase_date, color, odometer_km,
insurance_expiry, vehicle_status)
VALUES
('TG89H89', 'Rushi', 'Royal Enfield', 'Classic 350',
'MOTORCYCLE', 'DIESEL', 2021, '2021-05-15', 'Black',
4500, '2026-05-15', 'IN_SERVICE');

INSERT INTO vehicles
(registration_number, owner_name, manufacturer, model, vehicle_type,
fuel_type, manufacture_year, color)
VALUES
('AP09T123', 'Sujay', 'Toyota', 'Corolla',
'CAR', 'PETROL', 2022, 'Blue');

INSERT INTO vehicles
(registration_number, owner_name, manufacturer, model, vehicle_type,
fuel_type, manufacture_year, purchase_date, color, odometer_km,
insurance_expiry, vehicle_status)
VALUES
('KA38GF56', 'Sai', 'Tesla', 'Semi',
'TRUCK', 'ELECTRIC', 2024, '2024-01-10', 'Silver',
12000, '2027-01-10', 'ACTIVE');

SELECT * FROM vehicles;