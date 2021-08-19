CREATE DATABASE Sale;
/*
создается база данныйх Sale
*/
USE Sale;

/*
таблица базы данных продаж каталог
*/
CREATE TABLE catalog (
    product INTEGER AUTO_INCREMENT PRIMARY KEY,  # номер товара
    presence TINYBLOB, # присутствие
    descr TEXT, # описание
    FOREIGN KEY(ServiceName) REFERENCES AdditionalServices(ServiceNumber) # номер услуги
    final_price DECIMAL(10,2) # итоговая цена
);

/*
таблица базы данных продаж категория
*/
CREATE TABLE category (
    categ INTEGER AUTO_INCREMENT PRIMARY KEY,  # номер товара
    namae TINYTEXT # наименование
);