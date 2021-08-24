use sale;

#insert into Models(denomination, color, height, width, volume, freezer_volume, refrigerating_chamber_volume, depth) value ("Hiber one", "red", 5, 1, 9.5, 2.8, 0.5, 0.01);

#insert into Product(CategoryNumber, modelNumber, Price) value(1, 3, 25000);
#insert into Product(CategoryNumber, modelNumber, Price) value(2, 1, 21000);
#insert into Product(CategoryNumber, modelNumber, Price) value(3, 2, 12000);
#insert into Product(CategoryNumber, modelNumber, Price) value(4, 1, 17000);

#insert into Catalog(ItemNumber, presence, descr, ServiceNumb, final_price) value(1, "yes", "существует", 3, 28000);
#insert into Catalog(ItemNumber, presence, descr, ServiceNumb, final_price) value(4, "no", "не существует", 1, 30000);
#insert into Catalog(ItemNumber, presence, descr, ServiceNumb, final_price) value(3, "yes", "существует, но не тут", 2, 1000000);
#insert into Catalog(ItemNumber, presence, descr, ServiceNumb, final_price) value(2, "yes", "существует, но дешевый", 3, 18000);