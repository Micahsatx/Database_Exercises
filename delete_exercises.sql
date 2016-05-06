USE codeup_test_db;

-- selecting specific records to later delete
SELECT record_name FROM albums WHERE release_date >= '1991';
SELECT record_name FROM albums WHERE genre = 'disco';
SELECT record_name FROM albums WHERE artist_name = 'Whitney Houston';

-- deleteing the records we selected above
DELETE FROM albums WHERE release_date >= '1991';
DELETE FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE artist_name = 'Whitney Houston';

