SELECT * FROM products;

INSERT INTO products (sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date, product_status)
VALUES ('SKU-CBL-001', 'usb-c Cable', 'Accessories', 'TechLine', 399.00, 50, 10, NULL, NULL, 'ACTIVE');

INSERT INTO products (sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date, product_status)
VALUES ('SKU-KBD-002', 'Wireless Keyboard', 'Accessories', 'KeyPro', 1499.00, 8, 5, '2026-01-15', NULL, 'ACTIVE'),
('SKU-JCE-003', 'Orange Juice', 'Beverages', 'FreshDrop', 120.00, 0, 20, '2026-09-01', '2026-12-01', 'OUT_OF_STOCK');

INSERT INTO products (sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date, product_status)
VALUES ('SKU-NTB-004', 'A5 Notebook', 'Stationery', 'PaperNest', 75.00, 120, 25, NULL, NULL, 'ACTIVE'),
('SKU-OLD-005', 'Legacy Adapter', 'Accessories', '	WireMax', 599.00, 0, 20, NULL, NULL, 'DISCONTINUED');

-- voilated
INSERT INTO products (sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date, product_status)
VALUES ('SKU-CBL-006', 'usb-c Cable', 'Accessories', 'TechLine', -99.00, 10, 4, NULL, NULL, 'ACTIVE');


INSERT INTO products (sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date, product_status)
VALUES ('SKU-CBL-007', 'Lemon Juice', 'Beverages', 'Sprite', 140.50, 27, 7, '2026-09-01', '2026-05-01', 'ACTIVE');


UPDATE products SET quantity_in_stock = quantity_in_stock+60, product_status = 'ACTIVE' WHERE product_name = 'Orange Juice';

UPDATE products SET unit_price = ROUND(unit_price*1.05, 2) WHERE category = 'Accessories';

UPDATE products SET brand = NULL WHERE brand = 'PaperNest';

UPDATE products SET reorder_level = 15 WHERE product_status = 'ACTIVE' AND quantity_in_stock < 10;

UPDATE products SET quantity_in_stock = -1 WHERE sku = 'SKU-CBL-001';

SELECT * FROM products where sku = 'SKU-OLD-005';
DELETE FROM products where sku = 'SKU-OLD-005';

INSERT INTO products (sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date, product_status)
VALUES ('SKU-TEMP-999', 'Jeans', 'Clothes', 'Levis', 1399.00, 10, 4, NULL, NULL, 'ACTIVE');
SELECT * FROM products WHERE sku = 'SKU-TEMP-999';
DELETE FROM products WHERE sku = 'SKU-TEMP-999';