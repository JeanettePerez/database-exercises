USE codeup_test_db;
DROP table if exists albums;
CREATE TABLE if not exists albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist varchar(50) NOT NULL,
    name_of_album varchar(100) DEFAULT 'Untitled',
    release_date SMALLINT UNSIGNED,
    genre varchar(75) DEFAULT 'Not Listed',
    sales FLOAT UNSIGNED,
    PRIMARY key(id)
);

