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

create table Product ( /*ñîçäàíèå òàáëèöû Product*/
	ItemNumber int auto_increment primary key, /*íîìåð òîâàðà - ïåðâè÷íûé êëþ÷ òàáëèöû Product*/
	FOREIGN KEY(CategoryNumber) REFERENCES  Category (CategoryNumber), /*íîìåð êàòåãîðèè - âòîðè÷íûé êëþ÷ òàáëèöû Product*/
	FOREIGN KEY(ModelNumber) REFERENCES  Model (ModelNumber), /*íîìåð ìîäåëè - âòîðè÷íûé êëþ÷ òàáëèöû Product*/
	Price float /*öåíà òîâàðà*/
	);

 create table AdditionalServices ( /*ñîçäàíèå òàáëèöû AdditionalServices*/
	ServiceNumber int auto_increment primary key, /*íîìåð óñëóãè - ïåðâè÷íûé êëþ÷ òàáëèöû AdditionalServices*/
	NameOfService varchar (30), /*íàçâàíèå óñëóãè*/
	Price float /*öåíà òîâàðà*/
	);
    
    CREATE TABLE catalog (
    product INTEGER AUTO_INCREMENT PRIMARY KEY,  # номер товара
    presence TINYBLOB, # присутствие
    descr TEXT, # описание
    FOREIGN KEY(ServiceName) REFERENCES AdditionalServices(ServiceNumber), # номер услуги
    final_price DECIMAL(10,2) # итоговая цена
);

/*
таблица базы данных продаж категория
*/
CREATE TABLE category (
    categ INTEGER AUTO_INCREMENT PRIMARY KEY,  # номер товара
    namae TINYTEXT # наименование
);