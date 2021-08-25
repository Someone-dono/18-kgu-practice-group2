use sale;

insert into Models(denomination, color, height, width, volume, freezer_volume, refrigerating_chamber_volume, depth) value ("Hiber one", "red", 5, 1, 9.5, 2.8, 0.5, 0.01);

insert into AdditionalServices(NameOfService, Price) value ("texter", 2000);

insert into Category(nameCategory) value ("texter");

insert into Product(CategoryNumber, modelNumber, Price) value(1, 1, 25000);

insert into Catalog(ItemNumber, presence, descr, ServiceNumb, final_price) value(1, "yes", "существует", 1, 28000);