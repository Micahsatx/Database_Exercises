USE codeup_test_db;

DROP TABLE if exists albums;

CREATE TABLE albums (
    id INT UNSIGNED AUTO_INCREMENT, 
    artist VARCHAR(50),
    record VARCHAR(100),
    release_date YEAR,
    sales FLOAT,
    genre VARCHAR(150),
    PRIMARY KEY (id)
);
