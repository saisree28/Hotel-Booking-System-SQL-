(
ALTER SESSION SET NLS_DATE_FORMAT = 'MM/DD/YYYY';
CREATE TABLE customer (
    customer_id          number NOT NULL primary key,
    first_name             VARCHAR2(20),
    last_name              VARCHAR2(20),
    Gender                 VARCHAR2(20),
    phone_number      NUMBER  
);

INSERT INTO customer (id, first_name, last_name, gender, phone) VALUES 
('21225','Bryson','smithson','M','2233234'),
('21226','Mani','Bains','M','2233235'),
('21227','Kara','lena','F','2233236'),
('21228','Shashi','Lnu','F','2233237'),
('21229','Prince','Sr','M','2233238'),
('21230','john','kell','M','2233239'),
('21231','harry','Peter','M','2233240'),
('21232','Ramesh','Kumar','M','2233241'),
('21233','David','Cooper','M','2233242'),
('21234','Steve','Duck','M','2233243'),
('21235',' Henry','Persic','M','2233244'),
('21236','deepak','Kumar','M','2233245'),
('21237','Mary','elizabeth','F','2233246'),
('21238','Betty','ELls','F','2233247'),
('21239','Kelly','Kender','F','2233248'),
('21240','Joshua','Second','M','2233249'),
('21241','Mary','Jane','M','2233250'),
('21242','Harry','Timon','M','2233251'),
('21243','Ronald','Wayne','M','2233252'),
('21244','Kelly','Brooke','F','2233253'),
('21245','Steven','David','M','2233254'),
('21246','Philip','Jones','M','2233255'),
('21247','Michael','Sensom','M','2233256'),
('21248','Rubin','Lembo','M','2233257'),
('21249','Kirsten','Lira','F','2233258'),
('21250','Alysa','Voutur','F','2233259'),
('21251','Rufus','Blystone','M','2233260'),
('21252','Steven','Byrnes','M','2233261'),
('21253','Florrie','Ronald','F','2233262'),
('21254','Jeania','Giorgio','F','2233263'),
('21255','Paola','lahey','F','2233264'),
('21256','Ashley','Garnett','F','2233265'),
('21257','Russell','Knick','M','2233266'),
('21258','Phil','Grantham','M','2233267'),
('21259','Gloria','Knell','F','2233268'),
('21260','Bernie','blunt','M','2233269'),
('21261','Kareen','Willet','M','2233270'),
('21262','Rod','Fernece','M','2233271'),
('21263','Clasey ','Speidel','F','2233272'),
('21264','Werner','Nail','M','2233273'),
('21265','Glady','Ballerini','F','2233274'),
('21266','Jarvis','Mong','M','2233275'),
('21267','Kareen','Willet','F','2233276'),
('21268','Julius','Wooster','M','2233277'),
('21269','Paul','Craner','M','2233278'),
('21270','Theresa','Then','F','2233279'),
('21271','Martina ','Ruis','F','2233280'),
('21272','Danielle ','Markwell','F','2233281'),
('21273','Adan ','Tingler','M','2233282'),
('21274','Jerry ','Keltz','M','2233283');



select * from customer;

CREATE TABLE Booking (
    Booking_id          INTEGER NOT NULL primary key,
    Book_type             VARCHAR2(20),
    Book_date              VARCHAR2(20),
    Customer_id                   number  ,
    FOREIGN key(customer_id) references customer
);


INSERT INTO Booking (booking_id, booking_source, booking_date, customer_id) VALUES 
('31311','Third_Party','01/01/2018','21225'),
('31312','Direct','01/01/2018','21226'),
('31313','Direct','01/03/2018','21227'),
('31314','Third_Party','01/08/2018','21228'),
('31315','Third_Party','01/10/2018','21229'),
('31316','Direct','01/15/2018','21230'),
('31317','Direct','01/17/2018','21231'),
('31318','Third_Party','01/20/2018','21232'),
('31319','Direct','01/22/2018','21233'),
('31320','Third_Party','01/30/2018','21234'),
('31321','Direct','02/08/2018','21235'),
('31322','Third_Party','02/15/2018','21236'),
('31323','Third_Party','02/17/2018','21237'),
('31324','Direct','02/20/2018','21238'),
('31325','Third_Party','02/25/2018','21239'),
('31326','Third_Party','03/10/2018','21240'),
('31327','Direct','03/18/2018','21241'),
('31328','Direct','03/30/2018','21242'),
('31329','Third_Party','04/07/2018','21243'),
('31330','Third_Party','04/10/2018','21244'),
('31331','Third_Party','04/17/2018','21245'),
('31332','Direct','04/20/2018','21246'),
('31333','Third_Party','04/29/2018','21247'),
('31334','Direct','05/10/2018','21248'),
('31335','Third_Party','05/30/2018','21249'),
('31336','Direct','06/10/2018','21250'),
('31337','Direct','06/16/2018','21252'),
('31338','Third_Party','06/28/2018','21253'),
('31339','Third_Party','07/11/2018','21254'),
('31340','Direct','07/15/2018','21255'),
('31341','Third_Party','07/20/2018','21256'),
('31342','Direct','07/22/2018','21257'),
('31343','Direct','07/25/2018','21258'),
('31344','Third_Party','07/27/2018','21259'),
('31345','Direct','07/29/2018','21260'),
('31346','Third_Party','08/01/2018','21261'),
('31347','Third_Party','08/05/2018','21262'),
('31348','Third_Party','08/10/2018','21263'),
('31349','Direct','08/12/2018','21264'),
('31350','Third_Party','08/14/2018','21265'),
('31351','Third_Party','08/16/2018','21266'),
('31352','Direct','08/26/2018','21267'),
('31353','Third_Party','09/05/2018','21268'),
('31354','Direct','09/09/2018','21269'),
('31355','Third_Party','09/13/2018','21270'),
('31356','Third_Party','09/17/2018','21271'),
('31357','Third_Party','09/20/2018','21272'),
('31358','Direct','09/23/2018','21273'),
('31359','Third_Party','09/27/2018','21274'),
('31360','Direct','09/29/2018','21251');


select * from booking;


CREATE TABLE Reservation (
    Res_id          number NOT NULL primary key,
    check_in_date             Date,
    check_out_date              Date,
     No_of_days                 number,
    Customer_id                   number  ,
    Booking_id                     INTEGER,
    FOREIGN key(customer_id) references customer,
    FOREIGN key(booking_id) references booking
);


INSERT INTO Reservation (res_id, check_in, check_out, num_guests, customer_id, booking_id) VALUES 
('1001','01/03/2018','01/05/2018','2','21225','31311'),
('1002','01/01/2018','01/02/2018','1','21226','31312'),
('1003','01/03/2018','01/05/2018','2','21227','31313'),
('1004','01/09/2018','01/12/2018','3','21228','31314'),
('1005','01/11/2018','01/12/2018','1','21229','31315'),
('1006','01/15/2018','01/16/2018','1','21230','31316'),
('1007','01/17/2018','01/18/2018','1','21231','31317'),
('1008','01/20/2018','01/22/2018','2','21232','31318'),
('1009','01/22/2018','01/23/2018','1','21233','31319'),
('1010','01/30/2018','01/31/2018','1','21234','31320'),
('1011','02/08/2018','02/09/2018','1','21235','31321'),
('1012','02/15/2018','02/17/2018','2','21236','31322'),
('1013','02/17/2018','02/18/2018','1','21237','31323'),
('1014','02/20/2018','02/21/2018','1','21238','31324'),
('1015','02/25/2018','02/26/2018','1','21239','31325'),
('1016','03/10/2018','03/11/2018','1','21240','31326'),
('1017','03/18/2018','03/20/2018','2','21241','31327'),
('1018','03/30/2018','03/31/2018','1','21242','31328'),
('1019','04/07/2018','04/08/2018','1','21243','31329'),
('1020','04/10/2018','04/11/2018','1','21244','31330'),
('1021','04/17/2018','04/18/2018','1','21245','31331'),
('1022','04/20/2018','04/22/2018','2','21246','31332'),
('1023','04/29/2018','04/30/2018','1','21247','31333'),
('1024','05/10/2018','05/11/2018','1','21248','31334'),
('1025','05/30/2018','05/31/2018','1','21249','31335'),
('1026','06/10/2018','06/12/2018','2','21250','31336'),
('1027','06/16/2018','05/17/2018','1','21252','31337'),
('1028','06/29/2018','06/30/2018','1','21253','31338'),
('1029','07/13/2018','07/14/2018','1','21254','31339'),
('1030','07/15/2018','07/16/2018','1','21255','31340'),
('1031','07/20/2018','07/23/2018','3','21256','31341'),
('1032','07/22/2018','07/23/2018','1','21257','31342'),
('1033','07/25/2018','07/26/2018','1','21258','31343'),
('1034','07/27/2018','07/29/2018','2','21259','31344'),
('1035','07/29/2018','07/30/2018','1','21260','31345'),
('1036','08/03/2018','08/05/2018','2','21261','31346'),
('1037','08/05/2018','08/06/2018','1','21262','31347'),
('1038','08/10/2018','08/11/2018','1','21263','31348'),
('1039','08/12/2018','08/14/2018','2','21264','31349'),
('1040','08/14/2018','08/16/2018','2','21265','31350'),
('1041','08/16/2018','08/17/2018','1','21266','31351'),
('1042','08/26/2018','08/28/2018','2','21267','31352'),
('1043','09/05/2018','09/07/2018','2','21268','31353'),
('1044','09/09/2018','09/12/2018','3','21269','31354'),
('1045','09/13/2018','09/15/2018','2','21270','31355'),
('1046','09/17/2018','09/18/2018','1','21271','31356'),
('1047','09/20/2018','09/22/2018','2','21272','31357'),
('1048','09/23/2018','09/25/2018','2','21273','31358'),
('1049','09/27/2018','09/29/2018','2','21274','31359'),
('1050','09/29/2018','09/30/2018','1','21251','31360');

select * from reservation;
select check_out_date, customer_id from reservation;



CREATE TABLE Room (
    Room_no         INTEGER NOT NULL ,
    Room_type             varchar(20),
    Bed_type              varchar(20),
    No_of_occupants        number,
    Room_price             number,
    Customer_id                   number  ,
    res_id                     number,
   
    FOREIGN key(customer_id) references Customer,
    FOREIGN key(res_id) references Reservation
);


INSERT INTO Room (room_num, room_type, bed_type, floor, price, customer_id, res_id) VALUES 
('101','Standard','Queen','1','80','21225','1001'),
('504','President','King','2','190','21226','1002'),
('402','Executive','Queen','2','130','21227','1003'),
('404','Executive','Queen','1','110','21228','1004'),
('408','Executive','Queen','2','110','21229','1005'),
('401','Executive','Queen','2','130','21230','1006'),
('409','Executive','Queen','2','130','21231','1007'),
('402','Executive','Queen','2','110','21232','1008'),
('504','President','King','2','190','21233','1009'),
('103','Standard','Queen','1','80','21234','1010'),
('108','Standard','Queen','1','100','21235','1011'),
('406','Executive','Queen','2','110','21236','1012'),
('402','Executive','Queen','2','110','21237','1013'),
('206','Executive','Queen','2','130','21238','1014'),
('104','Standard','Queen','2','80','21239','1015'),
('508','President','King','1','180','21240','1016'),
('401','Executive','Queen','1','130','21241','1017'),
('406','Executive','Queen','2','130','21242','1018'),
('202','Standard','Queen','1','80','21243','1019'),
('102','Standard','Queen','2','80','21244','1020'),
('410','Executive','Queen','1','110','21245','1021'),
('412','Executive','Queen','1','130','21246','1022'),
('502','President','king','2','180','21247','1023'),
('506','President','King','2','190','21248','1024'),
('408','Executive','Queen','2','110','21249','1025'),
('404','Executive','Queen','1','130','21250','1026'),
('405','Executive','Queen','1','130','21252','1027'),
('203','Standard','Queen','2','80','21253','1028'),
('201','Standard','Queen','2','80','21254','1029'),
('412','Executive','Queen','2','130','21255','1030'),
('403','Executive','Queen','1','110','21256','1031'),
('407','Executive','Queen','1','130','21257','1032'),
('501','President','King','1','190','21258','1033'),
('506','President','King','2','180','21259','1034'),
('111','Standard','Queen','2','100','21260','1035'),
('117','Standard','Queen','2','80','21261','1036'),
('105','Standard','Queen','1','80','21262','1037'),
('405','Executive','Queen','2','110','21263','1038'),
('406','Executive','Queen','2','130','21264','1039'),
('404','Executive','Queen','2','110','21265','1040'),
('506','President','King','1','180','21266','1041'),
('407','Executive','Queen','2','130','21267','1042'),
('408','Executive','Queen','1','110','21268','1043'),
('204','Standard','Queen','2','100','21269','1044'),
('104','Standard','Queen','1','80','21270','1045'),
('101','Standard','Queen','2','80','21271','1046'),
('406','Executive','Queen','2','110','21272','1047'),
('402','Executive','Queen','2','130','21273','1048'),
('407','Executive','Queen','2','110','21274','1049'),
('502','President','King','2','190','21251','1050');



Select * from room;


CREATE TABLE Address (
    Street             varchar(30),
    City              varchar(30),
    State        varchar(30),
    Country             varchar(20),
    Customer_id                   number  ,
    Zip_code                     number,
    FOREIGN key(customer_id) references Customer
);


INSERT INTO Address (street, city, state, country, customer_id, zipcode) VALUES 
('22 Oak Street','San Diego','CA','US','21225','92123'),
('22 Jump Street','Los Angeles','CA','US','21226','91123'),
('31 Hill Avenue','San Francisco','CA','US','21227','95126'),
('44 Areo drive','Phonenix','AZ','US','21228','92123'),
('29 What Street','San Diego','CA','US','21229','92123'),
('550 Upas Street','New York','NY','US','21230','92123'),
('123 Summer Lane','Birmingham','AL','US','21231','91123'),
('4513 Pineville Road','Chicago','IL','US','21232','95126'),
('987 Bubbly Lane','Baltimore','MD','US','21233','92133'),
('555 Elwood Way','Los Angeles','CA','US','21234','92134'),
('2102 Laurelhurst Drive','Eugene','OR','US','21235','92123'),
('560 Capitol Way','Seattle','WA','US','21236','91123'),
('3404 Castro Boulevard','San Francisco','CA','US','21237','95126'),
('989 Lolipop Lane','Portland','OR','US','21238','92123'),
('2990 Collwood Boulevard','Albany','NY','US','21239','92123'),
('7890 Popcorn Lane','Albuquerque','NM','US','21240','92123'),
('40 Dane Lane','Junction City','OR','US','21241','91123'),
('3340 Havana Way','Jacksonville','NC','US','21242','95126'),
('575 Bratwurst Boulevard','Baltimore','MD','US','21243','92133'),
('6956 Wunderland Way','Los Angeles','CA','US','21244','92134'),
('7799 Billabong Way','San Diego','CA','US','21245','92123'),
('6546 Angelou Lane','Los Angeles','CA','US','21246','91123'),
('8866 Hayward Drive','San Francisco','CA','US','21247','95126'),
('330 West Lewis Street','Phonenix','AZ','US','21248','92123'),
('700 Candid Court','San Diego','CA','US','21249','92123'),
('370 Singh Way','New York','NY','US','21250','92123'),
('776 Lyons Way','Birmingham','AL','US','21251','91123'),
('660 Main Street','Chicago','IL','US','21252','95126'),
('4609 West Elm Street','Baltimore','MD','US','21253','92133'),
('3484 Northgate Way','Los Angeles','CA','US','21254','92134'),
('2020 Alderwood Drive','Eugene','OR','US','21255','92123'),
('1149 Spring Street','Seattle','WA','US','21256','91153'),
('10 Martin Luther King Blvd','San Francisco','CA','US','21257','95126'),
('375 Junebug Lane','Portland','OR','US','21258','92123'),
('5523 Westbrook Boulevard','Albany','NY','US','21259','92123'),
('1301 King Street','Albuquerque','NM','US','21260','92123'),
('4409 Lulubilly Lane','Junction City','OR','US','21261','91123'),
('4653 Windy Way','Jacksonville','NC','US','21262','95126'),
('83 Walter Street','Baltimore','MD','US','21263','92133'),
('14295 Maynard Street','Los Angeles','CA','US','21264','92134'),
('2360 East Irwin Way','Eugene','OR','US','21265','92123'),
('2137 Rocket Court','Seattle','WA','US','21266','91153'),
('1992 India Street','San Francisco','CA','US','21267','95126'),
('1983 Gresham Blvd','Portland','OR','US','21268','92123'),
('888 Luna Lane','Albany','NY','US','21269','92123'),
('239 Tristan Way','Albuquerque','NM','US','21270','92123'),
('444 Brighton Lane','Junction City','OR','US','21271','91123'),
('519 First Avenue','Jacksonville','NC','US','21262','9576'),
('1083 Bazar Boulevard','Baltimore','MD','US','21263','92173'),
('13 Jattan Wali Gali','Los Angeles','CA','US','21274','92134');



select * from address;




create TABLE Invoice (
    Invoice_No         INTEGER NOT NULL primary key,
    Res_id           integer,
    customer_id     number,

    FOREIGN key(res_id) references reservation,
  
    FOREIGN key(customer_id) references Customer   
);



INSERT INTO Invoice (invoice_id, res_id, customer_id) VALUES 
('2121','1001','21225'),
('2122','1002','21226'),
('2123','1003','21227'),
('2124','1004','21228'),
('2125','1005','21229'),
('2126','1006','21230'),
('2127','1007','21231'),
('2128','1008','21232'),
('2129','1009','21233'),
('2130','1010','21234'),
('2131','1011','21235'),
('2132','1012','21236'),
('2133','1013','21237'),
('2134','1014','21238'),
('2135','1015','21239'),
('2136','1016','21240'),
('2137','1017','21241'),
('2138','1018','21242'),
('2139','1019','21243'),
('2140','1020','21244'),
('2141','1021','21245'),
('2142','1022','21246'),
('2143','1023','21247'),
('2144','1024','21248'),
('2145','1025','21249'),
('2146','1026','21250'),
('2147','1027','21251'),
('2148','1028','21252'),
('2149','1029','21253'),
('2150','1030','21254'),
('2151','1031','21255'),
('2152','1032','21256'),
('2153','1033','21257'),
('2154','1034','21258'),
('2155','1035','21259'),
('2156','1036','21260'),
('2157','1037','21261'),
('2158','1038','21262'),
('2159','1039','21263'),
('2160','1040','21264'),
('2161','1041','21265'),
('2162','1042','21266'),
('2163','1043','21267'),
('2164','1044','21268'),
('2165','1045','21269'),
('2166','1046','21270'),
('2167','1047','21271'),
('2168','1048','21272'),
('2169','1049','21273'),
('2170','1050','21274');


select * from invoice;



CREATE TABLE Line (
    Invoice_No        INTEGER ,
    Service_id             integer,
   Service_quantityy     number,
   res_id               number,
   FOREIGN key(Service_id ) references services ,
   FOREIGN key(Invoice_No) references invoice ,
   FOREIGN key(res_id ) references reservation 
   );


INSERT INTO line (invoice_id, service_id, quantity, res_id) VALUES 
('2121','55201','1','1001'),
('2122','55205','2','1002'),
('2123','55202','1','1003'),
('2124','55203','1','1004'),
('2125','55204','1','1005'),
('2126','55201','1','1006'),
('2127','55205','2','1007'),
('2128','55202','1','1008'),
('2129','55203','1','1009'),
('2130','55205','1','1010'),
('2131','55203','1','1011'),
('2132','55204','1','1012'),
('2133','55203','1','1013'),
('2134','55204','1','1014'),
('2135','55202','1','1015'),
('2136','55204','1','1016'),
('2137','55201','1','1017'),
('2138','55204','1','1018'),
('2139','55201','1','1019'),
('2140','55204','1','1020'),
('2141','55202','1','1021'),
('2142','55204','1','1022'),
('2143','55203','1','1023'),
('2144','55205','1','1024'),
('2145','55204','1','1025'),
('2146','55204','1','1026'),
('2147','55204','1','1027'),
('2148','55203','1','1028'),
('2149','55204','1','1029'),
('2150','55202','1','1030'),
('2151','55201','1','1031'),
('2152','55204','1','1032'),
('2153','55205','1','1033'),
('2154','55204','1','1034'),
('2155','55205','1','1035'),
('2156','55204','1','1036'),
('2157','55203','1','1037'),
('2158','55204','1','1038'),
('2159','55202','1','1039'),
('2160','55202','1','1040'),
('2161','55201','1','1041'),
('2162','55201','1','1042'),
('2163','55203','1','1043'),
('2164','55204','1','1044'),
('2165','55205','1','1045'),
('2166','55202','1','1046'),
('2167','55204','1','1047'),
('2168','55204','1','1048'),
('2169','55203','1','1049'),
('2170','55203','1','1050');


select * from line;



CREATE TABLE Services (
    Service_id         INTEGER NOT NULL primary key,
    Service_type             varchar(20),
  Service_cost       number
);


INSERT INTO services (service_id, service_name, service_price) VALUES 
('55201', 'spa', 60),
('55202', 'Laundary', 30),
('55203', 'Breakfast', 30),
('55204', 'Lunch', 40),
('55205', 'Dinner', 60);

select * from services;




CREATE TABLE transactions (
    Trans_No         number NOT NULL primary key,
    Payment_Method            varchar(20),
    Payment_Date            date,
    Invoice_no            integer,
    Customer_id       number,
    
    FOREIGN key(invoice_no) references Invoice,
    FOREIGN key(customer_id) references Customer   
);


INSERT INTO transactions (transaction_id, payment_method, transaction_date, invoice_id, customer_id) VALUES 
('222444','cash','01/05/2018','2121','21225'),
('222445','credit_card','01/02/2018','2122','21226'),
('222446','Debit_card','01/05/2018','2123','21227'),
('222447','credit_card','01/12/2018','2124','21228'),
('222449','cash','01/12/2018','2125','21229'),
('222450','Debit_card','01/16/2018','2126','21230'),
('222451','cash','01/18/2018','2127','21231'),
('222452','cash','01/22/2018','2128','21232'),
('222453','cash','01/23/2018','2129','21233'),
('222454','credit_card','01/31/2018','2130','21234'),
('222455','credit_card','02/09/2018','2131','21235'),
('222456','credit_card','02/17/2018','2132','21236'),
('222457','cash','02/18/2018','2133','21237'),
('222458','credit_card','02/21/2018','2134','21238'),
('222459','credit_card','02/26/2018','2135','21239'),
('222460','cash','03/11/2018','2136','21240'),
('222461','credit_card','03/20/2018','2137','21241'),
('222462','credit_card','03/31/2018','2138','21242'),
('222463','cash','04/08/2018','2139','21243'),
('222464','cash','04/11/2018','2140','21244'),
('222465','cash','04/18/2018','2141','21245'),
('222466','credit_card','04/22/2018','2142','21246'),
('222467','Debit_card','04/30/2018','2143','21247'),
('222468','credit_card','05/11/2018','2144','21248'),
('222469','credit_card','05/31/2018','2145','21249'),
('222470','cash','06/12/2018','2146','21250'),
('222471','credit_card','09/30/2018','2147','21251'),
('222472','credit_card','06/17/2018','2148','21252'),
('222473','cash','06/30/2018','2149','21253'),
('222474','credit_card','07/14/2018','2150','21254'),
('222475','cash','07/16/2018','2151','21255'),
('222476','cash','07/23/2018','2152','21256'),
('222477','credit_card','07/23/2018','2153','21257'),
('222478','cash','07/26/2018','2154','21258'),
('222479','cash','07/29/2018','2155','21259'),
('222480','credit_card','07/30/2018','2156','21260'),
('222481','cash','08/05/2018','2157','21261'),
('222482','credit_card','08/06/2018','2158','21262'),
('222483','cash','08/11/2018','2159','21263'),
('222484','credit_card','08/14/2018','2160','21264'),
('222485','credit_card','08/16/2018','2161','21265'),
('222486','cash','08/17/2018','2162','21266'),
('222487','credit_card','08/28/2018','2163','21267'),
('222488','cash','09/07/2018','2164','21268'),
('222489','Debit_card','09/12/2018','2165','21269'),
('222490','cash','09/15/2018','2166','21270'),
('222491','credit_card','09/18/2018','2167','21271'),
('222492','Debit_card','09/22/2018','2168','21272'),
('222493','cash','09/25/2018','2169','21273'),
('222494','credit_card','09/29/2018','2170','21274');


select * from transactions;




CREATE TABLE Satisfaction (
    Satisfaction_ID         INTEGER,
    Satisfaction_level            number,
    Trans_no       number,
    
    FOREIGN key(Trans_no) references Transactions 

);



INSERT INTO Satisfaction (satisfaction_id, rating, transaction_id) VALUES 
('001','4','222444'),
('002','5','222445'),
('003','3','222446'),
('004','2','222447'),
('006','3','222449'),
('007','2','222450'),
('008','1','222451'),
('009','2','222452'),
('010','3','222453'),
('011','4','222454'),
('012','3','222455'),
('013','3','222456'),
('014','2','222457'),
('015','2','222458'),
('016','1','222459'),
('017','3','222460'),
('018','3','222461'),
('019','4','222462'),
('020','3','222463'),
('021','4','222464'),
('022','4','222465'),
('023','3','222466'),
('024','4','222467'),
('025','4','222468'),
('026','3','222469'),
('027','4','222470'),
('028','5','222471'),
('029','5','222472'),
('030','4','222473'),
('031','5','222474'),
('032','4','222475'),
('033','5','222476'),
('034','4','222477'),
('035','5','222478'),
('036','5','222479'),
('037','5','222480'),
('038','4','222481'),
('039','5','222482'),
('040','4','222483'),
('041','5','222484'),
('042','5','222485'),
('043','4','222486'),
('044','5','222487'),
('045','5','222488'),
('046','5','222489'),
('047','4','222490'),
('048','5','222491'),
('049','5','222492'),
('050','4','222493'),
('005','4','222494');



select * from satisfaction;
drop table 
commit;
rollback;

select rs.cutomer_id , sum (()totalRoomcharges
()TotalServiceCharges )
from room r ,reservation rs , services s, invoice i, line l
where r.customer_id = rs.customer_id and s.service_id= l.service_id
and i.res_id=rs.res_id and l.invoice_no=i.invoice_no;

select count(i.invoice_no ), to_char(rs.check_in_date, 'MM'),(r.room_price*rs.no_of_days)TotalRoom, 
(s.service_cost*l.service_quantityy)TotalService
from room r, reservation rs,services s, line l,invoice i
where r.res_id=rs.res_id and s.service_id=l.service_id and l.invoice_no=i.invoice_no
and rs.res_id=i.res_id
group by to_char(rs.check_in_date);

select count(customer_id)No_of_Customers, to_char(check_in_date, 'MM')Month
 from reservation group by to_char(check_in_date, 'MM')
 order by to_char(check_in_date, 'MM')asc;

select  (r.room_price*rs.no_of_days + s.service_cost*l.service_quantityy) grand ,
i.invoice_no
from room r, reservation rs,services s, line l,invoice i
where r.res_id=rs.res_id and s.service_id=l.service_id and l.invoice_no=i.invoice_no
and rs.res_id=i.res_id;



select  sum(r.room_price*rs.no_of_days + s.service_cost*l.service_quantityy)Total_Sales,
to_char(t.payment_date,'MM')MM,sum (r.room_price*rs.no_of_days)Total_Room_chargess,
sum(s.service_cost*l.service_quantityy)Total_Services_Charges
from room r, reservation rs,services s, line l,invoice i,transactions t
where r.res_id=rs.res_id and s.service_id=l.service_id and l.invoice_no=i.invoice_no
and rs.res_id=i.res_id  and t.invoice_no=i.invoice_no
group by to_char(payment_date, 'MM')
order by to_char(payment_date, 'MM')asc;


select AVG(sf.satisfaction_level), to_char(t.payment_date,'MM')MM from transactions t,
satisfaction sf where sf.trans_no=t.trans_no
group by to_char(t.payment_date, 'MM')
order by to_char(t.payment_date, 'MM')asc;

-- This query allows the hotel staff to see which rooms are currently empty for a specific date range.
-- List all rooms that are NOT currently assigned to a reservation
SELECT room_num, room_type, bed_type, price
FROM Room
WHERE room_num NOT IN (
    SELECT room_num 
    FROM Room 
    WHERE res_id IS NOT NULL -- Assuming res_id marks occupancy
);

-- Find available room types by floor
SELECT floor, room_type, COUNT(*) as available_count
FROM Room
WHERE res_id IS NULL
GROUP BY floor, room_type;

-- This command generates a full bill for a guest, combining their base room price with any extra services (Spa, Laundry, etc.) they used.
SELECT 
    C.first_name, 
    C.last_name, 
    R.room_num, 
    R.price AS room_base_price,
    S.service_name,
    L.quantity,
    S.service_price,
    (L.quantity * S.service_price) AS service_subtotal,
    (R.price + (L.quantity * S.service_price)) AS total_bill
FROM Customer C
JOIN Invoice I ON C.customer_id = I.customer_id
JOIN Room R ON I.res_id = R.res_id
JOIN Line L ON I.invoice_id = L.invoice_id
JOIN Services S ON L.service_id = S.service_id
WHERE I.invoice_id = '2122'; -- Replace with specific Invoice ID

-- Views are useful for management reports because they store complex queries as virtual tables that update automatically.
CREATE VIEW View_Occupancy_Report AS
SELECT 
    room_type, 
    COUNT(*) AS total_rooms,
    SUM(CASE WHEN res_id IS NOT NULL THEN 1 ELSE 0 END) AS occupied_rooms,
    ROUND((SUM(CASE WHEN res_id IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS occupancy_percentage
FROM Room
GROUP BY room_type;

-- To use it:
SELECT * FROM View_Occupancy_Report;

-- Revenue Summary View
CREATE VIEW View_Revenue_Report AS
SELECT 
    T.payment_method,
    COUNT(T.transaction_id) AS total_transactions,
    SUM(R.price) AS room_revenue,
    SUM(L.quantity * S.service_price) AS service_revenue,
    (SUM(R.price) + SUM(L.quantity * S.service_price)) AS total_revenue
FROM Transactions T
JOIN Invoice I ON T.invoice_id = I.invoice_id
JOIN Room R ON I.res_id = R.res_id
JOIN Line L ON I.invoice_id = L.invoice_id
JOIN Services S ON L.service_id = S.service_id
GROUP BY T.payment_method;

-- To use it:
SELECT * FROM View_Revenue_Report;


-- Correlate the customer feedback with the room type to see which category performs best. 
SELECT 
    R.room_type, 
    AVG(CAST(S.rating AS DECIMAL(10,2))) AS average_rating
FROM Satisfaction S
JOIN Transactions T ON S.transaction_id = T.transaction_id
JOIN Invoice I ON T.invoice_id = I.invoice_id
JOIN Room R ON I.res_id = R.res_id
GROUP BY R.room_type
ORDER BY average_rating DESC;

