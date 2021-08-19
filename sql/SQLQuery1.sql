 /*create database Sale;*/ /*cсоздание бд Sale*/

 use Sale; /*использование созданной бд Sale*/

 create table Product ( /*создание таблицы Product*/
	ItemNumber int auto_increment primary key, /*номер товара - первичный ключ таблицы Product*/
	FOREIGN KEY(CategoryNumber) REFERENCES  Category (CategoryNumber), /*номер категории - вторичный ключ таблицы Product*/
	FOREIGN KEY(ModelNumber) REFERENCES  Model (ModelNumber), /*номер модели - вторичный ключ таблицы Product*/
	Price float /*цена товара*/
	);

 create table AdditionalServices ( /*создание таблицы AdditionalServices*/
	ServiceNumber int auto_increment primary key, /*номер услуги - первичный ключ таблицы AdditionalServices*/
	NameOfService varchar (30), /*название услуги*/
	Price float /*цена товара*/
	);
