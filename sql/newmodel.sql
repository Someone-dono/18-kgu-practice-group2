CREATE DATABASE sale;
/*
создается база данныйх Sale
*/
USE sale;

/*
таблица базы данных продаж каталог
*/
CREATE TABLE Models (
    idModels INTEGER AUTO_INCREMENT PRIMARY KEY, # номер модели
    model INTEGER,
    denomination VARCHAR(30), # наименование
    color varchar(11), # цвет
    height integer, # высота в метрах
    width integer, # ширина в метрах
    volume decimal(40, 2), # объем
    freezer_volume decimal(40, 2), # объем морозной камеры
    refrigerating_chamber_volume decimal(40, 2), # объем холодильной камеры
    depth decimal(40, 2), # глубина 
    unique(model)
);




create table AdditionalServices ( /*создание таблицы AdditionalServices*/
	idAditionalServices integer auto_increment primary key, /*первичный ключ таблицы AdditionalServices*/
    ServiceNumber integer,
	NameOfService varchar (30), /*название услуги*/
	Price float, /*цена товара*/
    unique(ServiceNumber)
);

/*
таблица базы данных продаж категория
*/
CREATE TABLE Category (
	idCategory INTEGER AUTO_INCREMENT PRIMARY KEY,  # категория
    categoryProduct integer,
    nameCategory TINYTEXT, # наименование
    unique(categoryProduct)
);


create table Product ( /*создание таблицы Product*/
	idProduct integer auto_increment primary key, /*первичный ключ таблицы Product*/
	ItemNumber integer,
    CategoryNumber integer,
	modelNumber integer,
	FOREIGN KEY(CategoryNumber) REFERENCES  Category(categoryProduct), /*вторичный ключ таблицы Product*/
	FOREIGN KEY(modelNumber) REFERENCES  Models(model), /*вторичный ключ таблицы Product*/
	Price float, /*цена товара*/
    unique(ItemNumber)
);
    
    
CREATE TABLE Catalog (
	idCatalog integer auto_increment primary key,
	ItemNumber integer,
	presence text, # присутствие
	descr TEXT, # описание
    ServiceNumb integer,
	final_price DECIMAL(65,2), # итоговая цена
	FOREIGN KEY(ItemNumber) REFERENCES  Product (ItemNumber),# номер товара
	FOREIGN KEY(ServiceNumb) REFERENCES AdditionalServices(ServiceNumber) # номер услуги
);

