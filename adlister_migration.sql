CREATE DATABASE if not exists adlister_db;
USE adlister_db;
DROP TABLE IF EXISTS ad_categories;
DROP TABLE IF EXISTS ad;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;

CREATE TABLE users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(75) NOT NULL,
    password varchar(20) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE ad(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title varchar(75) NOT NULL,
    description TEXT NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE categories(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50)
);


CREATE TABLE if not exists ad_categories (
     ad_id INTEGER UNSIGNED NOT NULL,
     categories_id INTEGER UNSIGNED NOT NULL,
     FOREIGN KEY (ad_id) REFERENCES ad(id),
     FOREIGN KEY (categories_id) REFERENCES categories(id)
);

INSERT INTO users(email, password)
VALUES ('jmp@gmail.com', 'password12'),
       ('DLE@gmail.com', 'password13'),
       ('MSS@gmail.com', 'password14');

INSERT INTO categories(category_name)
VALUES ('Help wanted'),
       ('Giveaway'),
       ('Furniture'),
       ('electronic');

INSERT INTO ad(title, description, user_id)
VALUES ('lawnchair', 'for tanning', 1),
       ('computer', 'computer stuff', 2),
       ('bartender', 'bar needs tending help us', 3);

INSERT INTO ad_categories (ad_id, categories_id)
VALUES (1,3), (2,4),(3,1);