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
    height integer, # высота в метрах
    width integer, # ширина в метрах
    volume decimal(4, 2), # объем
    freezer_volume decimal(4, 2), # объем морозной камеры
    refrigerating_chamber_volume decimal(4, 2), # объем холодильной камеры
    depth decimal(4, 2) # глубина
);