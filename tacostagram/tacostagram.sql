DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS followers;


CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  timestamp TEXT,
  user_id TEXT,
  image_file TEXT
);

CREATE TABLE likes (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 post_id INTEGER,
 user_id INTEGER
);

CREATE TABLE comments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    post_id INTEGER,
    user_id INTEGER 
);

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT,
    first_name TEXT,
    last_name TEXT,
    location TEXT
);

CREATE TABLE followers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    followed_user_id TEXT,
    follower_user_id TEXT
);

