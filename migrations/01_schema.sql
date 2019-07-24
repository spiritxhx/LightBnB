DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS properties CASCADE;
DROP TABLE IF EXISTS reservations CASCADE;
DROP TABLE IF EXISTS property_reviews CASCADE;


CREATE TABLE users (
  id SERIAL PRIMARY KEY, 
  name TEXT, 
  email TEXT, 
  password TEXT
);

CREATE TABLE properties(
  id SERIAL PRIMARY KEY, 
  owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE, 
  title TEXT, 
  description TEXT, 
  thumbnail_photo_url TEXT, 
  cover_photo_url TEXT,
  cost_per_night INTEGER, 
  street INTEGER, 
  parking_spaces SMALLINT, 
  number_of_bathroooms SMALLINT, 
  number_of_bedrooms SMALLINT, 
  country TEXT,
  province TEXT, 
  post_code TEXT, 
  active BOOLEAN default false
);

CREATE TABLE reservations(
  id SERIAL PRIMARY KEY, 
  start_date DATE, 
  end_date DATE, 
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE, 
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE property_reviews(
  id SERIAL PRIMARY KEY, 
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE, 
  reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE, 
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE, 
  rating TEXT, 
  message TEXT
);