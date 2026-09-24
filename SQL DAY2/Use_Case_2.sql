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