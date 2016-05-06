USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist_name, record_name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', '1982', '48.1', 'Pop/,Rock/,R/&B'),
    ('AC/DC', 'Back in Black', '1980', '25.9', 'Hard Rock'),
    ('Pink Floyd', 'The Dark Side of the Moon', '1973', '22.9', 'Progressive Rock'),
    ('Whitney Houston', 'The Bodyguard', '1992', '27.4','Sountrack,R&B,Soul,Pop'),
    ('Meat Loaf', 'Bat Out of Hell', '1977', '20.6', 'Hard Rock, Progressive Rock'),
    ('Eagles', 'Their Greatest Hits', '1976', '32.2', 'Rock, Soft Rock, Folk Rock'),
    ('Bee Gees', 'Saturday Night Fever', '1977', '19', 'Disco'),
    ('Fleetwood Mac', 'Rumours', '1977', '27.9','Soft Rock'),
    ('Adele', '21', '2011', '22.3', 'Rock'),
    ('Eminem', 'The Marshall Mathers LP', '2000', '20', 'Rap');