--users
INSERT INTO users (name, email, password) VALUES ('Eva Stanley', 'sevastian@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users (name, email, password) VALUES ('Louisa Meyer', 'jacksonrose@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');
INSERT INTO users (name, email, password) VALUES ('Dominic Parks', 'victoriablackwell@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');
INSERT INTO users (name, email, password) VALUES ('Bob Chicken', 'chicken@bob.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

--properties
INSERT INTO properties (
    title, description, owner_id, cover_photo_url, thumbnail_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, active, provence, city, country, street, post_code) 
    VALUES ('Standard coach', 'description', 1, 'https://images.pexels.com/photos/2104151/pexels-photo-2104151.jpeg', 'https://images.pexels.com/photos/2104151/pexels-photo-2104151.jpeg?auto=compress&cs=tinysrgb&h=350', 35472, 6, 1, 7, true, 'Ontario', 'Ottawa', 'Canada', '1457 Cacomu Place', '05197');
INSERT INTO properties (
    title, description, owner_id, cover_photo_url, thumbnail_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, active, provence, city, country, street, post_code) 
    VALUES ('Warn dance', 'description', 2, 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 30103, 5, 1, 1, true, 'Manitoba', 'Steinbach', 'Canada', '984 Tadef Mill', '74467');
INSERT INTO properties (
    title, description, owner_id, cover_photo_url, thumbnail_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, active, provence, city, country, street, post_code) 
    VALUES ('Warn dance', 'description', 3, 'https://images.pexels.com/photos/1445416/pexels-photo-1445416.jpeg', 'https://images.pexels.com/photos/1445416/pexels-photo-1445416.jpeg?auto=compress&cs=tinysrgb&h=350', 86703, 3, 6, 7, true, 'Ontario', 'Kirkland Lake', 'Canada', '612 Basi Square', '98874');

--reservations
INSERT INTO reservations (
    guest_id, property_id, start_date, end_date)
    VALUES (1, 1, '2022-09-30', '2022-10-15');
INSERT INTO reservations (
    guest_id, property_id, start_date, end_date)
    VALUES (2, 2, '2021-04-30', '2021-05-18');
INSERT INTO reservations (
    guest_id, property_id, start_date, end_date)
    VALUES (3, 3, '2021-08-22', '2021-08-23');

--property_reviews
INSERT INTO property_reviews (
    guest_id, property_id, reservation_id, rating, message)
    VALUES (1, 1, 1, 4, 'message');
INSERT INTO property_reviews (
    guest_id, property_id, reservation_id, rating, message)
    VALUES (2, 2, 2, 4, 'message');
INSERT INTO property_reviews (
    guest_id, property_id, reservation_id, rating, message)
    VALUES (3, 3, 3, 3, 'message');