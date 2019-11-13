INSERT INTO users (name, email, password)
VALUES ('Eva Stanley', 'es@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'), 
('Louisa Mayer', 'ls@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Dominic Parks', 'dp@yahoo.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Sue Luna', 'sl@cbe.edu.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Rosalie Garza', 'rg@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Etta  West', 'ew@cbe.edu.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Margaret Wong', 'mw@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Leroy Hart', 'lh@yahoo.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Leroy King', 'lk@yahoo.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Mathew Bell', 'mb@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');


INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES ((SELECT id FROM users WHERE name = 'Eva Stanley'), 'Speed lamp', 'description', 'https://images.pixels.com/pictures/1.jpeg', 'https://images.pixels.com/pictures/a.jpeg', 100, 5, 2, 2, 'Canada', '1000 1st St', 'Calgary', 'AB', 'T1A 2C4', 'YES'),
((SELECT id FROM users WHERE name = 'Louisa Mayer'), 'Blank corner', 'description', 'https://images.pixels.com/pictures/3.jpeg', 'https://images.pixels.com/pictures/c.jpeg', 200, 6, 1, 2, 'Canada', '2000 3rd Ave', 'Vancouver', 'BC', 'T1A 2C4', 'YES'),
((SELECT id FROM users WHERE name = 'Etta  West'), 'Habit mix', 'description', 'https://images.pixels.com/pictures/2.jpeg', 'https://images.pixels.com/pictures/b.jpeg', 300, 4, 3, 2, 'Canada', '3000 2nd St', 'Toronto', 'ON', 'E1A 2B4', 'YES'),
((SELECT id FROM users WHERE name = 'Leroy Hart'), 'Port out', 'description', 'https://images.pixels.com/pictures/4.jpeg', 'https://images.pixels.com/pictures/d.jpeg', 400, 7, 2, 2, 'Canada', '4000 5th Ave', 'Edmonton', 'AB', 'T1A 5V1', 'YES'),
((SELECT id FROM users WHERE name = 'Leroy King'), 'Fun glad', 'description', 'https://images.pixels.com/pictures/5.jpeg', 'https://images.pixels.com/pictures/e.jpeg', 500, 10, 1, 2, 'Canada', '5000 6th St', 'Red Deer', 'AB', 'Q1A 2C3', 'YES'),
((SELECT id FROM users WHERE name = 'Mathew Bell'), 'Shine twenty', 'description', 'https://images.pixels.com/pictures/7.jpeg', 'https://images.pixels.com/pictures/f.jpeg', 250, 10, 1, 2, 'Canada', '6000 8th Ave', 'Banff', 'AB', 'B1A 2C4', 'YES');




INSERT INTO reservations (start_date, end_date, property_id, guest_id) 
VALUES ('2019-09-11', '2019-09-26', (SELECT id FROM properties WHERE title = 'Speed lamp'), (SELECT id FROM users WHERE name = 'Dominic Parks')),
('2019-01-04', '2019-02-01', (SELECT id FROM properties WHERE title = 'Blank corner'), (SELECT id FROM users WHERE name = 'Margaret Wong')),
('2019-10-01', '2019-10-14', (SELECT id FROM properties WHERE title = 'Habit mix'), (SELECT id FROM users WHERE name = 'Rosalie Garza')),
('2019-08-01', '2019-08-14', (SELECT id FROM properties WHERE title = 'Fun glad'), (SELECT id FROM users WHERE name = 'Sue Luna')),
('2019-11-10', '2019-11-16', (SELECT id FROM properties WHERE title = 'Shine twenty'), (SELECT id FROM users WHERE name = 'Dominic Parks')),
('2019-07-01', '2019-07-12', (SELECT id FROM properties WHERE title = 'Shine twenty'), (SELECT id FROM users WHERE name = 'Sue Luna')),
('2019-08-09', '2019-08-15', (SELECT id FROM properties WHERE title = 'Port out'), (SELECT id FROM users WHERE name = 'Margaret Wong'));



INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES ((SELECT id FROM users WHERE name = 'Dominic Parks'), (SELECT id FROM properties WHERE title = 'Speed lamp'), (SELECT id FROM reservations WHERE start_date = '2019-09-11'), 5, 'message'),
((SELECT id FROM users WHERE name = 'Margaret Wong'), (SELECT id FROM properties WHERE title = 'Blank corner'), (SELECT id FROM reservations WHERE start_date = '2019-01-04'), 2, 'message'),
((SELECT id FROM users WHERE name = 'Rosalie Garza'), (SELECT id FROM properties WHERE title = 'Habit mix'), (SELECT id FROM reservations WHERE start_date = '2019-10-01'), 4, 'message'),
((SELECT id FROM users WHERE name = 'Sue Luna'), (SELECT id FROM properties WHERE title = 'Fun glad'), (SELECT id FROM reservations WHERE start_date = '2019-08-01'), 1, 'message'),
((SELECT id FROM users WHERE name = 'Dominic Parks'), (SELECT id FROM properties WHERE title = 'Shine twenty'), (SELECT id FROM reservations WHERE start_date = '2019-11-10'), 3, 'message'),
((SELECT id FROM users WHERE name = 'Sue Luna'), (SELECT id FROM properties WHERE title = 'Shine twenty'), (SELECT id FROM reservations WHERE start_date = '2019-07-01'), 3, 'message'),
((SELECT id FROM users WHERE name = 'Margaret Wong'), (SELECT id FROM properties WHERE title = 'Port out'), (SELECT id FROM reservations WHERE start_date = '2019-08-09'), 3, 'message');







