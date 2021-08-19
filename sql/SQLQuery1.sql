 /*create database Sale;*/ /*c�������� �� Sale*/

 use Sale; /*������������� ��������� �� Sale*/

 create table Product ( /*�������� ������� Product*/
	ItemNumber int auto_increment primary key, /*����� ������ - ��������� ���� ������� Product*/
	FOREIGN KEY(CategoryNumber) REFERENCES  Category (CategoryNumber), /*����� ��������� - ��������� ���� ������� Product*/
	FOREIGN KEY(ModelNumber) REFERENCES  Model (ModelNumber), /*����� ������ - ��������� ���� ������� Product*/
	Price float /*���� ������*/
	);

 create table AdditionalServices ( /*�������� ������� AdditionalServices*/
	ServiceNumber int auto_increment primary key, /*����� ������ - ��������� ���� ������� AdditionalServices*/
	NameOfService varchar (30), /*�������� ������*/
	Price float /*���� ������*/
	);
