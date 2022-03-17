CREATE DATABASE Company ;

CREATE table tbl_employees(
employees_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	employees_type VARCHAR(250) NOT NULL,
	employees_fname VARCHAR(250) NOT NULL,
	employees_lname VARCHAR(250) NOT NULL,
	employees_postal VARCHAR(250) NOT NULL,
	employees_phone VARCHAR(250) NOT NULL,
	employees_earnings MONEY NOT NULL
							);

INSERT INTO tbl_employees
(employees_type, employees_fname, employees_lname, employees_postal, employees_phone, employees_earnings)
VALUES 
	('Software developer','Michalina', 'Brodnicka', 'bs130qa 28 lampton grove',' 0730654345', 45000),
	('HR Partner', 'Kasia', 'Bu³a', 'bs132we 30 main st', '0452565443', 30000),
	('Health and Safety coordinator', 'Asia', 'Lee', 'bs12tqa 280  slow grove',' 3758349574', 27000),
	('OPS Manager', 'Poul', 'Bing', 'np207we 1 view hill', '345285435', 50000),
	('Area Manager', 'Alex', 'Smith', 'bs110pa 234 union st',' 5478537593', 39000)
			;

	SELECT * FROM tbl_employees;

		 
CREATE table tbl_product
( products_id INT PRIMARY KEY NOT NULL IDENTITY (2200,1),
product_delivery VARCHAR (50) NOT NULL ,
product_name VARCHAR(50) NOT NULL,
product_cost MONEY NOT NULL
);

INSERT INTO tbl_product
	(product_delivery, product_name, product_cost )
	VALUES 
	('3-5 Days', 'Towels', 15),
	('7-14 Days', 'Bathroom cabinet', 300),
	('1-3 Days', 'Cap', 80),
	('3-5 Days', 'Mirror', 90),
	('1-3 Days', 'slip mat', 6),
	('NEXT Day', 'paper rolls 24packs', 13),
	('NEXT Days', 'teath brush', 1.50),
	('3-5 Days', 'sink', 150)
	 ;
	 	SELECT * FROM tbl_product;

		
CREATE TABLE tbl_info (
info_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
info_products INT NOT NULL CONSTRAINT fk_products_id FOREIGN KEY REFERENCES tbl_product (products_id),
info_employees INT NOT NULL CONSTRAINT fk_employees_id FOREIGN KEY REFERENCES tbl_employees(employees_id) 
);

INSERT  INTO info_products , info_employees
VALUES 
(8,5),
(6,5),
(5,3),
(3,5),
(7,4),
(2,5),
(1,5),
(4,1)
;


	 	SELECT * FROM tbl_info;
