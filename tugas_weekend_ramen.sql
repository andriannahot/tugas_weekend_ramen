CREATE DATABASE tugas_weekend
USE tugas_weekend

CREATE TABLE ramen (
review INT(4) PRIMARY KEY,
brand VARCHAR(100),
variety VARCHAR(100),
style VARCHAR(50),
country VARCHAR(100),
stars DECIMAL(3,2),
top_ten VARCHAR(10)
);

LOAD DATA INFILE 'D:/Diklat_BKPSDM/Materi_Database/tugas_weekend/ramen-ratings.csv'
INTO TABLE ramen
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT*FROM ramen WHERE stars > 4;
SELECT*FROM ramen WHERE country = "Japan";
SELECT review,brand, UPPER(variety) AS 'variety',style,country,stars,top_ten FROM ramen;