USE codeup_test_db;

-- display the name of the record from the artist Pink Floyd
SELECT record_name FROM albums WHERE artist_name = 'Pink Floyd';

-- display the release date from the artist Eminem
SELECT release_date FROM albums WHERE artist_name = 'Eminem';

-- display the genre for the album named 21
SELECT genre FROM albums WHERE record_name = '21';

-- display all albums released between 1990-200
SELECT record_name FROM albums WHERE release_date BETWEEN '1990' AND '2000';

-- display all albums with less than 20 million in sales
SELECT record_name FROM albums WHERE sales <= '20';

-- display all albums that are catagorized as rock
SELECT record_name FROM albums WHERE genre LIKE '%Rock%';