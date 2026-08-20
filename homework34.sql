-- CREATE TABLE hotels (
-- 	hotel_id SERIAL PRIMARY KEY,
-- 	hotel_name VARCHAR(100) NOT NULL,
-- 	city VARCHAR(100) NOT NULL,
-- 	stars INT NOT NULL CHECK(stars BETWEEN 1 and 5)
-- );

-- CREATE TABLE rooms (
-- 	room_id SERIAL PRIMARY KEY,
-- 	room_number int NOT NULL,
-- 	floor int NOT NULL,
-- 	price DECIMAL(10,2) NOT NULL,
-- 	hotel_id INT REFERENCES hotels(hotel_id) ON DELETE CASCADE
-- );

-- CREATE TABLE guests (
-- 	guest_id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR(50) NOT NULL,
-- 	last_name VARCHAR(100) NOT NULL,
-- 	phone_number VARCHAR(20) NOT NULL,
-- 	room_id INT REFERENCES rooms(room_id) ON DELETE CASCADE
-- );

-- CREATE TABLE services (
-- 	service_id SERIAL PRIMARY KEY,
-- 	service_name VARCHAR(100) NOT NULL,
-- 	price DECIMAL(10,2) NOT NULL,
-- 	room_id INT REFERENCES rooms(room_id) ON DELETE CASCADE
-- );

-- INSERT INTO hotels (hotel_name, city, stars) VALUES
--     ('Grand Hotel', 'Tbilisi', 5),
--     ('Seaside Resort', 'Batumi', 4);


-- INSERT INTO rooms (room_number, floor, price, hotel_id) VALUES
--     (101, 1, 150.00, 1),
--     (102, 1, 200.00, 1),
--     (103, 2, 250.00, 1),
--     (201, 1, 120.00, 2),
--     (202, 2, 180.00, 2),
--     (203, 3, 220.00, 2);

-- INSERT INTO guests (first_name, last_name, phone_number, room_id) VALUES
--     ('giorgi', 'beridze', '599111111', 1),
--     ('nino', 'kapanadze', '599222222', 1),
--     ('davit', 'meskhi', '598333333', 2),
--     ('elene', 'japharidze', '598444444', 2),
--     ('luka', 'gabunia', '597555555', 3),
--     ('mariam', 'shengelia', '597666666', 3),
--     ('irakli', 'chanturia', '595777777', 4),
--     ('salome', 'kavtaradze', '595888888', 4),
--     ('zurab', 'gelashvili', '593999999', 5),
--     ('tamar', 'lomidze', '593000000', 5),
--     ('sandro', 'tsintsadze', '591123123', 6),
--     ('ani', 'dolidze', '591456456', 6);


-- INSERT INTO services (service_name, price, room_id) VALUES
--     ('Breakfast', 25.00, 1),
--     ('Laundry', 15.00, 1),
--     ('Spa Access', 50.00, 2),
--     ('Mini Bar', 30.00, 2),
--     ('Parking', 10.00, 3),
--     ('Late Check-out', 40.00, 3),
--     ('Breakfast', 20.00, 4),
--     ('Room Service', 25.00, 4),
--     ('Pool Access', 35.00, 5),
--     ('Laundry', 15.00, 5),
--     ('Airport Shuttle', 60.00, 6),
--     ('Spa Access', 45.00, 6);


-- SELECT r.room_id, r.room_number, r.floor, r.price, h.hotel_name 
-- FROM rooms r
-- JOIN hotels h ON r.hotel_id = h.hotel_id;

-- SELECT g.first_name, g.last_name, g.phone_number, r.room_number, h.hotel_name 
-- FROM guests g
-- JOIN rooms r ON g.room_id = r.room_id
-- JOIN hotels h ON r.hotel_id = h.hotel_id;

-- SELECT g.first_name, g.last_name, g.phone_number, r.room_number, h.hotel_name 
-- FROM guests g
-- JOIN rooms r ON g.room_id = r.room_id
-- JOIN hotels h ON r.hotel_id = h.hotel_id
-- WHERE h.hotel_name = 'Grand Hotel'

-- SELECT h.hotel_name, COUNT(r.room_id) AS total_rooms
-- FROM hotels h
-- LEFT JOIN rooms r ON h.hotel_id = r.hotel_id
-- GROUP BY h.hotel_id, h.hotel_name;

-- SELECT r.room_id, r.room_number, r.floor, r.price
-- FROM rooms r
-- LEFT JOIN services s ON r.room_id = s.room_id
-- WHERE s.service_id IS NULL;

-- DELETE FROM rooms WHERE room_id = 1;

-- SELECT * FROM guests WHERE room_id = 1;
-- SELECT * FROM services WHERE room_id = 1;


-- SELECT price FROM rooms WHERE room_id = 2;
-- UPDATE rooms SET price = 130 WHERE room_id = 2;
-- SELECT price FROM rooms WHERE room_id = 2;

-- UPDATE guests SET room_id = 2 WHERE guest_id = 3;



