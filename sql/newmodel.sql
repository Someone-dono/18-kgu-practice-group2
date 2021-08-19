CREATE DATABASE Sale;
/*
создается база данныйх Sale
*/
USE Sale;

/*
таблица базы данных продаж каталог
*/
CREATE TABLE Models (
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




create table AdditionalServices ( /*создание таблицы AdditionalServices*/
	ServiceNumber int auto_increment primary key, /*первичный ключ таблицы AdditionalServices*/
	NameOfService varchar (30), /*название услуги*/
	Price float /*цена товара*/
);

/*
таблица базы данных продаж категория
*/
CREATE TABLE category (
    categ INTEGER AUTO_INCREMENT PRIMARY KEY,  # номер товара
    namae TINYTEXT # наименование
);


create table Product ( /*создание таблицы Product*/
	ItemNumber int auto_increment primary key, /*первичный ключ таблицы Product*/
	CategoryNumber integer,
	modelNumber integer,
	FOREIGN KEY(CategoryNumber) REFERENCES  category (categ), /*вторичный ключ таблицы Product*/
	FOREIGN KEY(modelNumber) REFERENCES  models (model), /*вторичный ключ таблицы Product*/
	Price float /*цена товара*/
);
    
    
CREATE TABLE Catalog (
	ItemNumber int,
	presence TINYBLOB, # присутствие
	descr TEXT, # описание
    ServiceNumb int,
	final_price DECIMAL(10,2), # итоговая цена
	FOREIGN KEY(ItemNumber) REFERENCES  Product (ItemNumber),# номер товара
	FOREIGN KEY(ServiceNumb) REFERENCES AdditionalServices(ServiceNumber) # номер услуги
);

