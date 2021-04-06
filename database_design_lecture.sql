CREATE DATABASE IF NOT EXISTS design_test_db;
USE design_test_db;
DROP TABLE IF EXISTS quote_topic;
DROP TABLE IF EXISTS quotes;
DROP TABLE IF EXISTS topics;
DROP TABLE IF EXISTS authors;

CREATE TABLE quotes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author_first_name VARCHAR(50) DEFAULT 'NONE',
    author_last_name  VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE authors (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- refactoring quotes table for separation of concerns
ALTER TABLE quotes DROP COLUMN author_first_name;
ALTER TABLE quotes DROP COLUMN author_last_name;
ALTER TABLE quotes ADD COLUMN author_id INT UNSIGNED NOT NULL;
ALTER TABLE quotes ADD FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE NO ACTION ON UPDATE CASCADE;

SELECT * FROM quotes;
SELECT * FROM authors;

INSERT INTO authors(first_name, last_name)
VALUES ('Anne', 'Rice'),
       ('George', 'Orwell'),
       ('Jane','Austen'),
       ('Robert', 'frost');

INSERT INTO quotes(author_id, content)
VALUES ((SELECT id FROM authors where first_name = 'Anne' AND last_name = 'Rice'),
        'The only power that exists is inside ourselves.');
INSERT INTO quotes(author_id, content)
VALUES ((SELECT id FROM authors where first_name = 'George' AND last_name = 'Orwell'),
        'In a time of deceit telling the truth is a revolutionary act.');
INSERT INTO quotes(author_id, content)
VALUES ((SELECT id FROM authors where first_name = 'Jane' AND last_name = 'Austen'),
        'Laugh as much as you choose, but you will not laugh me out of my opinion.');
INSERT INTO quotes(author_id, content)
VALUES ((SELECT id FROM authors where first_name = 'Robert' AND last_name = 'Frost'),
        'Education is the ability to listen to almost anything without losing your temper or your self-confidence.');

SELECT CONCAT(authors.first_name, ' ', authors.last_name) AS Author, content AS Famous_Quote
from quotes
join authors ON quotes.author_id = authors.id;

DROP TABLE if exists topics;
DROP Table if exists quote_topic;
CREATE TABLE topics (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO topics(name) VALUES
('gothic fiction'),
('dystopian'),
('life advice'),
('romance');

CREATE TABLE if not exists quote_topic (
     quote_id INTEGER UNSIGNED NOT NULL,
     topic_id INTEGER UNSIGNED NOT NULL,
     FOREIGN KEY (quote_id) REFERENCES quotes(id),
     FOREIGN KEY (topic_id) REFERENCES topics(id)
);


INSERT INTO quote_topic(quote_id, topic_id)
 VALUES (1,1),(2,2),(4,3),(3,4);

select * from quote_topic;

SELECT CONCAT(a.first_name, ' ', a.last_name) AS Author, q.content as Quotes, t.name AS Topics
FROM quotes q
INNER JOIN quote_topic qt on q.id = qt.quote_id
INNER JOIN topics t on qt.topic_id = t.id
INNER JOIN authors a ON q.author_id = a.id
WHERE qt.topic_id IN (
    select topics.id
    FROM topics
    WHERE topics.name = 'gothic fiction'
    );
