DROP TABLE IF EXISTS pin_user_likes CASCADE;

CREATE TABLE pin_user_likes (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  pin_id INTEGER REFERENCES pins(id) ON DELETE CASCADE,
  likes BOOLEAN DEFAULT FALSE
);
