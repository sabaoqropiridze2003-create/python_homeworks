-- SELECT * FROM students;
-- SELECT * FROM students WHERE first_name LIKE 'Sa%';
-- SELECT * FROM students WHERE first_name LIKE '%a';
-- SELECT * FROM students WHERE first_name LIKE '%a%';
-- SELECT * FROM students WHERE first_name LIKE 'Sab_';
-- UPDATE students set employeed = false RETURNING *;
-- UPDATE students set employeed = true WHERE age % 2 = 0 RETURNING *;
-- UPDATE students SET first_name = UPPER(first_name) RETURNING *;
-- UPDATE students SET first_name = INITCAP(first_name) RETURNING *;
-- UPDATE students set first_name = LOWER(first_name) returning *;
-- ALTER TABLE students ADD COLUMN info varchar(100);
-- SELECT * FROM students;
-- UPDATE students SET info = first_name || last_name || 'is' || age ||'years old';
-- UPDATE students SET info = CONCAT_WS(' ',first_name, last_name, 'is', age, 'years old') RETURNING *;
-- UPDATE students set info = REPLACE(info, 'old', 'young') RETURNING *;
-- ALTER TABLE students RENAME COLUMN first_name TO name;
-- ALTER TABLE students RENAME COLUMN name TO first_name;
-- DELETE FROM students WHERE age = 20 RETURNING *;
-- DELETE FROM students;


-- INSERT INTO students
-- 	(first_name, last_name,age, job)
-- VALUES
-- 	('saba', 'okropiridze', 34, 'programer');

-- TRUNCATE TABLE students RESTART IDENTITY;

-- CREATE TABLE students (
-- 	student_id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR(50)
-- )

-- INSERT INTO students
-- 	(first_name)
-- VALUES
-- 	('saba'),
-- 	('gio'),
-- 	('aleko');

-- DELETE FROM students WHERE student_id = 2;
-- INSERT INTO students(student_id, first_name) VALUES (2,'irakla');
DROP TABLE students;


