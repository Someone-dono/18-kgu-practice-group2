CREATE DATABASE Sale;
/*
создается база данныйх Sale
*/
USE Sale;

/*
таблица базы данных продаж каталог
*/
CREATE TABLE models (
    model INTEGER AUTO_INCREMENT PRIMARY KEY,  # номер модели
    denomination VARCHAR(30), # наименование
    color varchar(11), # цвет
    height integer, # высота
    width integer, # ширина
    volume integer, # объем
    freezer_volume integer, # объем морозной камеры
    refrigerating_chamber_volume integer, # объем холодильной камеры
    depth integer # глубина
);