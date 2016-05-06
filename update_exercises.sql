USE codeup_test_db;

-- change albums to all have 10x more sales.
UPDATE albums
SET sales = (sales*10);
SELECT * FROM albums;

-- update all albums to have a release date of 1901
UPDATE albums
SET release_date = '1901'
WHERE release_date <= '1980';
SELECT * FROM albums WHERE release_date <= '1980';

-- change the artists name from Michael Jackson to Peter Jackson
UPDATE albums
SET artist_name = 'Peter Jackson'
WHERE artist_name = 'Michael Jackson';
SELECT artist_name FROM albums WHERE artist_name = 'Peter Jackson';
