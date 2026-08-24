-- SELECT fname, lname, name FROM students st
-- JOIN subjects su ON st.subject_id = su.subject_id;

-- SELECT st.fname, st.lname, name AS subject, l.fname, l.lname FROM students st
-- JOIN subjects su ON st.subject_id = su.subject_id
-- JOIN lecturers l ON su.lecturer_id = l.lecturer_id;

-- SELECT st.fname, st.lname, su.name AS subject, l.fname, l.lname, c.name AS course FROM students st
-- JOIN subjects su ON st.subject_id = su.subject_id
-- JOIN lecturers l ON su.lecturer_id = l.lecturer_id
-- JOIN courses c ON c.course_id = su.course_id;

-- CREATE TABLE users(
-- 	user_id SERIAL PRIMARY KEY,
-- 	username VARCHAR(30) UNIQUE NOT NULL
-- );

-- CREATE TABLE profiles(
-- 	profile_id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR(40) NOT NULL,
-- 	last_name VARCHAR(50) NOT NULL,
-- 	bio TEXT,
-- 	user_id INT UNIQUE REFERENCES users(user_id) ON DELETE CASCADE NOT NULL
-- );


-- INSERT INTO users(username) VALUES ('username1'), ('username2'), ('username3'), ('username4');

-- INSERT INTO profiles(first_name, last_name, user_id) VALUES
-- 	('user1 first_name', 'user1 last_name', 1),
-- 	('user2 first_name', 'user2 last_name', 2),
-- 	('user3 first_name', 'user3 last_name', 3),
-- 	('user4 first_name', 'user4 last_name', 4);

-- CREATE TABLE students(
-- 	student_id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR(30) NOT NULL,
-- 	last_name VARCHAR(40) NOT NULL
-- );

-- CREATE TABLE subjects(
-- 	subject_id SERIAL PRIMARY KEY,
-- 	title VARCHAR(30) UNIQUE
-- );

-- CREATE TABLE student_subject(
-- 	id SERIAL PRIMARY KEY,
-- 	student_id INT REFERENCES students(student_id) ON DELETE CASCADE,
-- 	subject_id INT REFERENCES subjects(subject_id) ON DELETE CASCADE,
-- 	roll_date DATE DEFAULT CURRENT_DATE,
-- 	UNIQUE(student_id, subject_id)
-- );

-- INSERT INTO students(first_name, last_name) VALUES
-- ('nika', 'mokia'),
-- ('giorgi', 'levinson'),
-- ('barbare', 'chumburidze'),
-- ('elene', 'cecxladze');


-- INSERT INTO subjects(title) VALUES ('Python'), ('JS'), ('C#');

-- INSERT INTO student_subject(student_id, subject_id) VALUES
-- (1, 3), (3, 3), (4, 3), (3, 2), (2, 3), (1, 2), (4, 2);

-- SELECT first_name, last_name, title, roll_date FROM students st
-- JOIN student_subject ss ON ss.student_id = st.student_id
-- JOIN subjects su ON su.subject_id = ss.subject_id;


-- CREATE TABLE categories(
-- 	cat_id SERIAL PRIMARY KEY,
-- 	title VARCHAR(30) UNIQUE
-- );

-- CREATE TABLE products(
-- 	product_id SERIAL PRIMARY KEY,
-- 	name VARCHAR(30) NOT NULL,
-- 	price NUMERIC(6, 2),
-- 	quantity INT,
-- 	cat_id INT REFERENCES categories(cat_id) ON DELETE CASCADE
-- );

-- INSERT INTO categories(title) VALUES ('tech'), ('home'), ('game'), ('fashion');

-- INSERT INTO products(name, price, quantity, cat_id) VALUES
-- 	('product1', 25, 10, 2),
-- 	('product2', 100, 2, 1),
-- 	('product3', 50, 5, 2),
-- 	('product4', 30, 8, 4),
-- 	('product5', 70, 8, 1),
-- 	('product1', 150, null, null);


-- SELECT COUNT(*) FROM products;
-- SELECT COUNT(quantity) FROM products;
-- SELECT name, quantity * price AS total FROM products;
-- SELECT SUM(price) FROM products;
-- SELECT SUM(quantity) FROM products;
-- SELECT SUM(price * quantity) FROM products;
-- SELECT MAX(price) FROM products;
-- SELECT MIN(price) FROM products;
-- SELECT ROUND(AVG(price)) FROM products;

-- SELECT name, price, quantity, title FROM products p 
-- INNER JOIN categories c ON p.cat_id = c.cat_id;

-- SELECT name, price, quantity, title FROM products p 
-- LEFT JOIN categories c ON p.cat_id = c.cat_id;

-- SELECT name, price, quantity, title FROM products p 
-- RIGHT JOIN categories c ON p.cat_id = c.cat_id;

-- SELECT name, price, quantity, title FROM products p 
-- FULL JOIN categories c ON p.cat_id = c.cat_id;












