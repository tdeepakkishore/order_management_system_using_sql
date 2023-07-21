# Database Creation
create database order_management;

# Activating Database
use order_management;

# Creating Tables

/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

# Product Table
create table product (product_id int AUTO_INCREMENT primary key, product_name varchar(500) not null, price float not null, discount float not null,product_desc varchar(1000) not null, category varchar(50) not null, sub_category varchar(50) not null, manufacturer varchar(100) not null);

insert into product (product_name,price,discount,product_desc,category,sub_category,manufacturer) values 
('Bread',20,5.5,'Whole-grain flour tortillas','Bakery','Bread and Bun','Fresh Choice'),
('Dairy Milk',15,3.5,'sweetness, sourness & bitterness','Bakery','Chocolates','Cadbury'),
('Bar-One',20,10.5,'sweetness, sourness & bitterness','Bakery','Chocolates','Nestle'),
("OnePlus Nord 2T 5G",29999,10,"Gray Shadow, 8GB RAM, 128GB Storage","Electronics","Mobiles","One Plus"),
("Echo Dot (3rd Gen)",3499,5,"New and improved smart speaker with Alexa (Black)","Electronics","Amazon Devices","Amazon"),
("HP Victus Gaming Laptop",120465,20,"Crafted for Gaming: Built with the powerful 5th Gen AMD Ryzen 7 5800H, The HP Victus Gaming Laptop comes with 16 GB DDR4-3200 MHz RAM, upgradable upto 32 GB DDR4-3200 SDRAM (2 x 16 GB) and 512 GB PCIe NVMe TLC M.2 SSD storage.","Electronics","Laptops","HP"),
("Apple MacBook Air Laptop",1199000,13,"Apple MacBook Air Laptop with M2 chip: 34.46 cm (13.6-inch) Liquid Retina Display, 8GB RAM, 256GB SSD Storage, Backlit Keyboard, 1080p FaceTime HD Camera. Works with iPhone/iPad","Electronics","Laptops","Apple"),
("Canon EOS 1500D",39995,10,"Digital SLR Camera (Black) with EF S18-55 is II Lens","Electronics","Camera & Photography","Canon"),
("Red Tape Men T-Shirt",2599,55,"Grow your everyday style by wearing this navy casual t-shirt from RED TAPE. ","Fashion","T-Shirt","Red Tape"),
("THE GOPI DIARIES: GROWING UP",399,20,"Third book in the Gopi Diaries series!","Education","Books","Sudha Murthy"),
("THE ESCAPE ARTIST: The Man Who Broke Out of Auschwitz to Warn the World",799,27,"The Man Who Broke Out of Auschwitz to Warn the World","Education","Books"," Jonathan Freedland"),
("American Tourister 32 Ltrs Grey Casual Backpack",2300,65,"Laptop Compatibility: No, Strap Type: Adjustable,","Bags, Wallet and Luggage","Bags and Backpacks","American Tourister"),
("Skybags Trooper 55 Cms Polycarbonate Blue Hardsided Cabin Luggage",6825,50,"Durable Blend Of Polycarbonate And 100 Percent Virgin Hard Case Outer Material Is Designed To Absorb Impact Under Stress And 'Flex' Back Into Its Original Shape.","Bags, Wallet and Luggage","Luggage Bags","Skybags"),
("Vega Crux Black Helmet-M",1358,11,"High Impact ABS Material Shell with texture finish","Car & Motorbike","Motorbike Accessories & Parts","Vega"),
("Probiker FM-Gloves_BK_Full_L Bike Full Finger Gloves (Black, Large)",799,70,"Special ergonomic design with hard shell protection, taking into account aesthetics and security","Car & Motorbike","Motorbike Accessories & Parts","Probiker"),
("Lifelong FitPro LLTM09 (2.5 HP Peak) Manual Incline Motorized Treadmill",31000,22,"12 pre-set workout programs to set variable exercise mode for weight loss training and endurance training and 8 rubber pads under deck for shock absorption. ","Exercise & Fitness","Treadmills","Lifelong");

select * from product;

/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

# Customer Table
create table customer (cust_id int AUTO_INCREMENT primary key, salutation varchar(10) not null, cust_name varchar(50) not null, dob date not null, 
gender varchar(10) not null, mob varchar(12) unique,email varchar(50) unique, education varchar(50) , profession varchar(100), marital_status varchar(20) not null, cust_type varchar(50) not null);

insert into customer (salutation, cust_name, dob, gender, mob, email,education,profession,marital_status,cust_type) values 
('Mr','KIRAN KUMAR','1994-01-25','M',7936435895,'kiran_kumar@gmail.com','Graduate','Software Employee','Not Married','New Customer'),
('Mr','AMIT KUMAR ','1997-07-29','M',7682535896,'amit.kumar@gmail.com','High School','Post Office','Married','New Customer'),
('Mrs','SHALINI','1992-04-12','F',9848386452,'shalini@gmail.com','Graduate','Software Employee','Not Married','New Customer'),
('Mrs','ROJEENA MATHEW','1988-07-12','F',8564832686,'mathew.rojeena@gmail.com','PHD','Goverment Employee','Married','New Customer'),
('Mr','KISHORE KUMAR','1997-07-29','M',9879346688, 'kishore_kumar@gmail.com','Post Graduation','Teacher','Not Married','New Customer');

select * from customer;

/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
# Agent Table

create table agent_dtls (agent_id int AUTO_INCREMENT primary key, agent_name varchar(100) not null, agent_type varchar(50) not null, role varchar(50) not null, dept_id varchar(20) not null, status varchar(50) not null);

alter table agent_dtls AUTO_INCREMENT = 10000;

insert into agent_dtls (agent_name,agent_type,role,dept_id,status) values 
('Ram','Sales','Sales Executive','DEPT0001','Active'),
('Kiran','Marketing','Marketing Executive','DEPT0005','Active'),
('Shyam','Digital Marketing','Digital Marketing Executive','DEPT0010','Active'),
('Akash','Sales','Sales Executive','DEPT0001','Active');

select * from agent_dtls;

/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

# product_inventory
create table product_inventory (product_id int AUTO_INCREMENT primary key, product_name varchar(500) not null,active varchar(20) not null, instock varchar(20) not null
, cur_stock int not null, foreign key (product_id) references product (product_id));

insert into product_inventory (product_name,active,instock,cur_stock) values
('Bread','Active','Yes',75),
('Dairy Milk','Active','Yes',25),
('Bar-One','Active','Yes',50),
('OnePlus Nord 2T 5G','Active','Yes',7),
('Echo Dot (3rd Gen)','Active','Yes',12),
('HP Victus Gaming Laptop','Active','Yes',10),
('Apple MacBook Air Laptop','Active','Yes',5),
('Canon EOS 1500D','Active','Yes',7),
('Red Tape Men T-Shirt','Active','Yes',8),
('THE GOPI DIARIES: GROWING UP','Active','Yes',5),
('THE ESCAPE ARTIST: The Man Who Broke Out of Auschwitz to Warn the World','Active','Yes',8),
('American Tourister 32 Ltrs Grey Casual Backpack','Active','Yes',4),
('Skybags Trooper 55 Cms Polycarbonate Blue Hardsided Cabin Luggage','Active','Yes',12),
('Vega Crux Black Helmet-M','Active','Yes',9),
('Probiker FM-Gloves_BK_Full_L Bike Full Finger Gloves (Black, Large)','Active','Yes',6),
('Lifelong FitPro LLTM09 (2.5 HP Peak) Manual Incline Motorized Treadmill','Active','Yes',3);

select * from product_inventory;

/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

# customer_address
create table customer_details (cust_id int AUTO_INCREMENT primary key, add_type varchar(200) not null, address_1 varchar(200) not null, address_2 varchar(200) not null, 
city varchar(50) not null, state varchar(50) not null , country varchar(50) not null, pincode int not null, foreign key (cust_id) references customer (cust_id));

insert into customer_details (add_type,address_1,address_2,city,state,country,pincode) values
('residential','Flat_No: 32/18','Dabagardens','Visakhapatnam','Andhrapradesh','India',530004),
('residential','Flat_No: 1-216','Asilmetta','Hyderabad','Andhrapradesh','India',530015),
('commercial','Shop_No: 2','LB Nagar','Hyderabad','Telangana','India',530015),
('residential','Flat_No: 1-1/25','Dabagardens','Visakhapatnam','Andhrapradesh','India',530015),
('residential','Flat_No: 22', 'Seethamadhara','Visakhapatnam','Andhrapradesh','India',715008);

select * from customer_details;
/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
# Cart Table

create table cart (product_id int,qty int not null, price float , tot_price float generated always as (qty*price));

# Adding Products to Card
call add_too_cart(12,1);

# Fetching Data from Table
SELECT * FROM CART;
/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
# Order Table

create table order_details (order_id varchar(10), cust_id int ,agent_id int,order_amount float not null,
 order_datetime datetime, delivery_datetime datetime, order_status varchar(200) not null,order_type varchar(50) not null,PRIMARY KEY (order_id,cust_id,agent_id),
 foreign key (cust_id) references customer (cust_id), foreign key (agent_id) references agent_dtls (agent_id));

# Fetching Data from Table
select * from order_details;

# Adding Orders to Order
call order_booking (ord_id,cst_id,agt_id,dt,o_type);
call order_booking ('ORDER019',3,10001,'2012-12-2','PREPAID');

/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
# Product Order Tables
create table pro_order (order_id varchar(50),order_datetime datetime,product_id int,cust_id int,/*Primary Key(order_id, product_id),*/ product_name varchar(500) not null,quantity int not null/*,
 foreign key (order_id) references order_details (order_id), foreign key (product_id) references product (product_id)*/);
 
SET SQL_SAFE_UPDATES = 0;

# Fetch Data from Pro Order
select * from pro_order;
/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
#-----------------Store_Procedures----------------------------#

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_too_cart`(IN pro int,IN qty int)
BEGIN
		DECLARE x int;
        DECLARE y int;
		DECLARE z varchar(200);
        
	select cur_stock into z from order_management.product_inventory where product_inventory.product_id = pro;
	select price into x from order_management.product where product.product_id = pro;
    select discount into y from order_management.product where product.product_id = pro;
    
    IF qty > z THEN
		SET z = 'Sorry Required Quantity was Not There........!';
        select (z) as Alert;
	Else
		insert into cart (product_id,qty,price) values (pro,qty,(x*(1-(y/100))));
		select * from cart;
    END IF;
END

*/
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `order_booking`(IN ord_id varchar(10),IN cst_id int,IN agt_id int,IN dt date,IN o_type varchar(10))
BEGIN
		DECLARE x int;
        DECLARE y int;
        DECLARE z varchar(50);
        DECLARE M int;
        DECLARE N varchar(500);
    select sum(tot_price) into x from cart;
    SELECT DATE_ADD(dt, INTERVAL 7 DAY) into y;
    IF y < curdate() THEN
		SET z = 'Order Delivered';
	Else
		SET z = 'Order Not Delivered';
    END IF;
    
	insert into order_details (order_id,cust_id,agent_id,order_amount,order_datetime,delivery_datetime,order_status,order_type) 
    values (ord_id,cst_id,agt_id,x,dt,y,z,o_type);
    IF (select COUNT(*) from cart where product_id = 1)!=0 THEN
		select sum(qty) into M from cart where product_id = 1;
        select product_name into N from product where product_id = 1;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,1,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 1)) where product_id = 1;
	END IF;
        
        
	IF (select COUNT(*) from cart where product_id = 2)!=0 THEN
		select sum(qty) into M from cart where product_id = 2;
        select product_name into N from product where product_id = 2;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,2,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 2)) where product_id = 2;
    END IF;
    
    IF (select COUNT(*) from cart where product_id = 3)!=0 THEN
		select sum(qty) into M from cart where product_id = 3;
        select product_name into N from product where product_id = 3;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,3,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 3)) where product_id = 3;
	END IF;
    
    IF (select COUNT(*) from cart where product_id = 4)!=0 THEN
		select sum(qty) into M from cart where product_id = 4;
        select product_name into N from product where product_id = 4;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,4,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 4)) where product_id = 4;
	END IF;
    
    IF (select COUNT(*) from cart where product_id = 5)!=0 THEN
		select sum(qty) into M from cart where product_id = 5;
        select product_name into N from product where product_id = 5;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,5,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 5)) where product_id = 5;
	END IF;
    
    IF (select COUNT(*) from cart where product_id = 6)!=0 THEN
		select sum(qty) into M from cart where product_id = 6;
        select product_name into N from product where product_id = 6;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,6,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 6)) where product_id = 6;
	END IF;
    
    IF (select COUNT(*) from cart where product_id = 7)!=0 THEN
		select sum(qty) into M from cart where product_id = 7;
        select product_name into N from product where product_id = 7;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,7,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 7)) where product_id = 7;
	END IF;
    
    IF (select COUNT(*) from cart where product_id = 8)!=0 THEN
		select sum(qty) into M from cart where product_id = 8;
        select product_name into N from product where product_id = 8;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,8,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 8)) where product_id = 8;
	END IF;
    
    IF (select COUNT(*) from cart where product_id = 9)!=0 THEN
		select sum(qty) into M from cart where product_id = 9;
        select product_name into N from product where product_id = 9;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,9,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 9)) where product_id = 9;
	END IF;
    
    IF (select COUNT(*) from cart where product_id = 10)!=0 THEN
		select sum(qty) into M from cart where product_id = 10;
        select product_name into N from product where product_id = 10;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,10,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 10)) where product_id = 10;
	END IF;
    
    IF (select COUNT(*) from cart where product_id = 11)!=0 THEN
		select sum(qty) into M from cart where product_id = 11;
        select product_name into N from product where product_id = 11;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,11,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 11)) where product_id = 11;
	END IF;
    
    IF (select COUNT(*) from cart where product_id = 12)!=0 THEN
		select sum(qty) into M from cart where product_id = 12;
        select product_name into N from product where product_id = 12;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,12,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 12)) where product_id = 12;
	END IF;
    
    IF (select COUNT(*) from cart where product_id = 13)!=0 THEN
		select sum(qty) into M from cart where product_id = 13;
        select product_name into N from product where product_id = 13;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,13,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 13)) where product_id = 13;
	END IF;
    
    IF (select COUNT(*) from cart where product_id = 14)!=0 THEN
		select sum(qty) into M from cart where product_id = 14;
        select product_name into N from product where product_id = 14;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,14,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 14)) where product_id = 14;
	END IF;
    
    IF (select COUNT(*) from cart where product_id = 15)!=0 THEN
		select sum(qty) into M from cart where product_id = 15;
        select product_name into N from product where product_id = 15;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,15,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 15)) where product_id = 15;
	END IF;
    
    IF (select COUNT(*) from cart where product_id = 16)!=0 THEN
		select sum(qty) into M from cart where product_id = 16;
        select product_name into N from product where product_id = 16;
		insert into pro_order (order_id, order_datetime, product_id, cust_id, product_name, quantity) values (ord_id,dt,16,cst_id,N,M);
		Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 16)) where product_id = 16;
    END IF;
    
    /*
    Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 3)) where product_id = 3;
    Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 4)) where product_id = 4;
    Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 5)) where product_id = 5;
    Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 6)) where product_id = 6;
    Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 7)) where product_id = 7;
    Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 8)) where product_id = 8;
    Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 9)) where product_id = 9;
    Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 10)) where product_id = 10;
    Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 11)) where product_id = 11;
    Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 12)) where product_id = 12;
    Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 13)) where product_id = 13;
    Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 14)) where product_id = 14;
    Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 15)) where product_id = 15;
    Update product_inventory set product_inventory.cur_stock = (cur_stock-(select sum(qty) from cart where product_id = 16)) where product_id = 16;
    */
    /*
    truncate cart;
    select * from pro_order;
	select * from order_details;
END 

*/

call add_too_cart(13,2);
call add_too_cart(5,1);
call order_booking ('ORDER0001',5,10001,'2019-02-04','PREPAID');

call add_too_cart(14,2);
call add_too_cart(12,2);
call add_too_cart(3,1);
call order_booking ('ORDER0002',2,10002,'2019-07-23','PREPAID');

call add_too_cart(13,1);
call add_too_cart(15,1);
call add_too_cart(3,1);
call order_booking ('ORDER0003',4,10003,'2019-11-07','PREPAID');

call add_too_cart(7,1);
call order_booking ('ORDER0004',2,10002,'2020-02-19','PREPAID');

call add_too_cart(3,1);
call add_too_cart(15,1);
call order_booking ('ORDER0005',2,10003,'2020-02-27','COD');

call add_too_cart(11,1);
call add_too_cart(12,1);
call order_booking ('ORDER0006',3,10000,'2020-05-15','COD');

call add_too_cart(7,2);
call add_too_cart(5,2);
call add_too_cart(1,1);
call order_booking ('ORDER0007',5,10001,'2020-10-24','PREPAID');

call add_too_cart(11,2);
call add_too_cart(11,2);
call add_too_cart(9,2);
call add_too_cart(6,1);
call order_booking ('ORDER0008',4,10000,'2021-06-27','COD');

call add_too_cart(6,2);
call add_too_cart(11,1);
call add_too_cart(1,1);
call add_too_cart(14,2);
call order_booking ('ORDER0009',5,10002,'2021-12-06','COD');


call add_too_cart(16,1);
call add_too_cart(6,1);
call order_booking ('ORDER0010',5,10002,'2022-03-06','PREPAID');

call add_too_cart(5,1);
call add_too_cart(4,1);
call add_too_cart(5,2);
call order_booking ('ORDER0011',1,10003,'2022-09-01','PREPAID');

call add_too_cart(16,1);
call add_too_cart(12,1);
call order_booking ('ORDER0012',4,10002,'2022-10-15','COD');

select * from pro_order;
select * from cart;
select * from product_inventory;

desc `product_inventory`;

# Q1 - Product which has Items Sold
select product_id,product_name,sum(quantity) as 'quantity' from pro_order group by product_id,product_name order by sum(quantity) desc limit 1;

# Q2 - Agent Type of Who has more sales
select agent_type from agent_dtls where agent_id in (select agent_id from (select agent_id, sum(order_amount) from order_details group by agent_id order by sum(order_amount) desc limit 1)A);

# Q3 - Fetch Sales Month and Year
select year(order_datetime) as 'Year', monthname(order_datetime) as 'Month', sum(order_amount) as 'Tot_Sales' from order_details group by Year,Month order by sum(order_amount) desc;

# Q4 - Product Name of Most Demanded Product
select product_name from (select product_name,sum(quantity),dense_rank()over(order by sum(quantity) desc) as DNRK from pro_order group by product_id)A where DNRK=1;

# Q5 - Loyal Customer Name
select cust_name from customer where cust_id in
(select cust_id from (select cust_id, rank() over(order by sum(order_amount) desc) as RNK from order_details group by cust_id)A where RNK =1);

# Q6 - Category which has most Sales
select category,count(product.product_id) as Items_Sold from product inner join pro_order on product.product_id = pro_order.product_id group by category order by Items_Sold desc;

# Q7 - Sub-Category which has most Sales
select sub_category,count(product.product_id) as Items_Sold from product inner join pro_order on product.product_id = pro_order.product_id group by sub_category order by Items_Sold desc;

# Q8 - Role of Agent who has more sales
# Top
select role from agent_dtls where agent_id in (select agent_id from (select agent_id,rank()over(order by sum(order_amount) desc) as RNK from order_details group by agent_id)A where RNK = (select min(RNK) from (select agent_id,rank()over(order by sum(order_amount) desc) as RNK from order_details group by agent_id)A));
# Bottom
select role from agent_dtls where agent_id in (select agent_id from (select agent_id,rank()over(order by sum(order_amount) desc) as RNK from order_details group by agent_id)A where RNK = (select max(RNK) from (select agent_id,rank()over(order by sum(order_amount) desc) as RNK from order_details group by agent_id)A));

# Q9 - Top 3 Category which has most Discounted Items
select category,sub_category,avg(discount) as 'Average Discount' from product group by category,sub_category order by avg(discount) desc limit 3;

# Q10 - Agent ID who has processed more prepaid orders
select agent_id,count(order_type) as CNT from order_details where order_type = 'Prepaid' group by agent_id order by CNT desc;

select * from order_details;

select * from customer;