-- CREATE TABLE customers (
-- 	customer_id SERIAL PRIMARY KEY,
-- 	customer_name VARCHAR(100) NOT NULL,
-- 	email VARCHAR(100) UNIQUE NOT NULL
	
-- );

-- CREATE TABLE customer_profile (
-- 	profile_id SERIAL PRIMARY key,
-- 	phone_number VARCHAR(20),
-- 	address TEXT,
-- 	customer_id INT UNIQUE NOT NULL REFERENCES customers(customer_id) ON DELETE CASCADE
	
-- );


-- CREATE TABLE suppliers (
-- 	supplier_id SERIAL PRIMARY KEY,
-- 	supplier_name VARCHAR(100) NOT NULL,
-- 	contact_email VARCHAR(100) UNIQUE NOT NULL
-- );

-- CREATE TABLE products (
-- 	product_id SERIAL PRIMARY KEY,
-- 	title VARCHAR(100) NOT NULL,
-- 	price NUMERIC(10,2) NOT NULL,
-- 	supplier_id INT REFERENCES suppliers(supplier_id) ON DELETE CASCADE
-- );



-- CREATE TABLE orders (
-- 	order_id SERIAL PRIMARY KEY,
-- 	order_date DATE DEFAULT CURRENT_DATE,
-- 	customer_id INT REFERENCES customers(customer_id) ON DELETE CASCADE
	
-- );



-- CREATE TABLE order_products (
-- 	id SERIAL PRIMARY KEY,
-- 	order_id INT REFERENCES orders(order_id) ON DELETE CASCADE,
-- 	product_id INT REFERENCES products(product_id) ON DELETE CASCADE,
-- 	quantity INT NOT NULL CHECK(quantity > 0),
-- 	UNIQUE(order_id, product_id)	
-- );










