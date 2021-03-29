USE codeup_test_db;
DROP table if exists albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist varchar(50) NOT NULL,
    name varchar(100) DEFAULT 'Untitled',
    release_date INT UNSIGNED,
    sales float UNSIGNED,
    genre varchar(20) DEFAULT 'Not Listed',
    PRIMARY key(id)
);

