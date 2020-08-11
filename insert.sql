insert into suppliers (supplier_name, phone_number, email) values ('AK Traders', 017123456789, 'aktraders@gmail.com');
insert into suppliers (supplier_name, phone_number, email) values ('Karukarjo', 017234567890, 'kary@gmail.com');
insert into suppliers (supplier_name, phone_number)        values ('Shahin Art Store', 017345678901);
insert into suppliers (supplier_name, phone_number, email) values ('Art Mart', 017456789012, 'artmart@gmail.com');
insert into suppliers (supplier_name, phone_number, email) values ('Charcoal', 017567890123, 'charcoal@ymail.com');


insert into products  (Category, price, name, supplier_id, availability) values ('Water Colour' ,350, 'Water Colour 12pcs', 1, 'Y');
insert into products  (Category, price, name, supplier_id, availability) values ('Water Colour', 620, 'Water Colour 24pcs', 2, 'Y');
insert into products  (Category, price, name, supplier_id, availability) values ('Poster Colour', 410, 'Poster Colour', 1, 'Y');
insert into products  (Category, price, name, supplier_id, availability) values ('Brush Set', 210, 'Brush Set 8pcs', 2, 'N');
insert into products  (Category, price, name, supplier_id, availability) values ('Canvas', 300, '8 x 12 inches canvas', 5, 'Y');
insert into products  (Category, price, name, supplier_id, availability) values ('Pencil Set', 120, 'Faber Castel Pencil Set', 3, 'Y');
insert into products  (Category, price, name, supplier_id, availability) values ('Powder Colour', 240, 'Powder Colour Set', 1, 'Y');
insert into products  (Category, price, name, supplier_id, availability) values ('Paper Set', 80, '10 pcs Paper Set', 1, 'Y');
insert into products  (Category, price, name, supplier_id, availability) values ('Palette', 40, 'Palette', 4, 'Y');
insert into products  (Category, price, name, supplier_id, availability) values ('Easel', 180, 'Easel', 5, 'Y');
insert into products  (Category, price, name, supplier_id, availability) values ('Oil Colour', 800, 'Oil Colour Set', 3, 'N');
insert into products  (Category, price, name, supplier_id, availability) values ('Poster Colour', 410, 'Poster Colour', 3, 'Y');
insert into products  (Category, price, name, supplier_id, availability) values ('Brush Set', 300, 'Squirrel Brush Set 8pcs', 2, 'N');


insert into Customer  (First_name, Last_name, phone_number, city, zip, street) values ('Aparajita', 'Dola', 01789108108, 'Dhaka', 1205, 4);
insert into Customer  (First_name, Last_name, phone_number, city, zip, street) values ('Tahmina', 'Rahman', 01789111111, 'Rajshahi', 6290, 5);
insert into Customer  (First_name, Last_name, phone_number, city, zip, street) values ('Ishrat', 'Jahan', 01789242424, 'Dhaka', 1206, 3);
insert into Customer  (First_name, Last_name, phone_number, city, zip, street) values ('Towhidul', 'Islam', 01621345673, 'Dhaka', 1200, 7);
insert into Customer  (First_name, Last_name, phone_number, city, zip, street) values ('Sourav', 'Chowdhury', 01521215441, 'Jhinaidah', 1567, 3);
insert into Customer  (First_name, phone_number, city) values ('Rodela', 01911111112, 'Dhaka');
insert into Customer  (First_name, phone_number, city, zip, street) values ('Jannat', 01783425731, 'Dhaka', 1208, 6);
insert into Customer  (First_name, phone_number, city) values ('Priyonto', 01612345678, 'Rajshahi');


insert into c_order   (order_date, customer_id, product_id) values ('31/Mar/2018', 1, 1);
insert into c_order   (order_date, customer_id, product_id) values ('01/Apr/2018', 5, 9);
insert into c_order   (order_date, customer_id, product_id) values ('01/Apr/2018', 1, 5);
insert into c_order   (order_date, customer_id, product_id) values ('02/Apr/2018', 2, 6);
insert into c_order   (order_date, customer_id, product_id) values ('03/Apr/2018', 4, 5);
insert into c_order   (order_date, customer_id, product_id) values ('03/Apr/2018', 6, 7);
insert into c_order   (order_date, customer_id, product_id) values ('04/Apr/2018', 8, 3);
insert into c_order   (order_date, customer_id, product_id) values ('05/Apr/2018', 3, 3);
insert into c_order   (order_date, customer_id, product_id) values ('06/Apr/2018', 7, 8);
insert into c_order   (order_date, customer_id, product_id) values ('06/Apr/2018', 7, 9);
insert into c_order   (order_date, customer_id, product_id) values ('06/Apr/2018', 7, 12);
insert into c_order   (order_date, customer_id, product_id) values ('07/Apr/2018', 4, 3);
insert into c_order   (order_date, customer_id, product_id) values ('08/Apr/2018', 3, 12);
insert into c_order   (order_date, customer_id, product_id) values ('09/Apr/2018', 5, 9);
insert into c_order   (order_date, customer_id, product_id) values ('09/Apr/2018', 8, 2);


insert into Shipping  (courrier_service, shipping_date, customer_id) values ('Sundarban Courrier', '01/Apr/2018', 1);
insert into Shipping  (courrier_service, shipping_date, customer_id) values ('SA Courrier', '02/Apr/2018', 5);
insert into Shipping  (courrier_service, shipping_date, customer_id) values ('Sundarban Courrier', '02/Apr/2018', 1);
insert into Shipping  (courrier_service, shipping_date, customer_id) values ('SA Courrier', '03/Apr/2018', 2);
insert into Shipping  (courrier_service, shipping_date, customer_id) values ('SA Courrier', '04/Apr/2018', 4);
insert into Shipping  (courrier_service, shipping_date, customer_id) values ('Sundarban Courrier', '04/Apr/2018', 6);
insert into Shipping  (courrier_service, shipping_date, customer_id) values ('Sundarban Courrier', '05/Apr/2018', 8);
insert into Shipping  (courrier_service, shipping_date, customer_id) values ('Sundarban Courrier', '06/Apr/2018', 3);
insert into Shipping  (courrier_service, shipping_date, customer_id) values ('SA Courrier', '07/Apr/2018', 7);
insert into Shipping  (courrier_service, shipping_date, customer_id) values ('SA Courrier', '08/Apr/2018', 4);
insert into Shipping  (courrier_service, shipping_date, customer_id) values ('SA Courrier', '09/Apr/2018', 3);
insert into Shipping  (courrier_service, shipping_date, customer_id) values ('SA Courrier', '10/Apr/2018', 5);
insert into Shipping  (courrier_service, shipping_date, customer_id) values ('SA Courrier', '10/Apr/2018', 8);