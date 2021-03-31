USE codeup_test_db;

SELECT name_of_album
    AS 'Albums from Pink Floyd'
    FROM albums
    WHERE artist = "Pink Floyd";
SELECT release_date
    AS 'Sgt. Peppers Lonely Hearts Club Band was released in '
    FROM albums
    WHERE name_of_album LIKE "Sgt. Peppers%";
SELECT genre
    AS 'The genre for Nevermind'
    FROM albums
    WHERE name_of_album = "Nevermind";
SELECT name_of_album
    AS 'Albums released in 1990'
    FROM albums
    WHERE release_date BETWEEN 1990 AND 1999;
SELECT name_of_album
    AS 'ALL Rock albums'
    FROM albums
    WHERE genre LIKE "%rock%";
SELECT name_of_album
    AS 'Albums with less than 20 million certified sales'
    FROM albums
    WHERE sales < 20;

