CREATE DATABASE Sale;

USE Sale;
CREATE TABLE katalog (
    model INTEGER AUTO_INCREMENT PRIMARY KEY, 
    denomination VARCHAR(30), 
    color varchar(11),
    height integer,
    width integer,
    volume integer,
    freezer_volume integer,
    refrigerating_chamber_volume integer,
    depth integer
);