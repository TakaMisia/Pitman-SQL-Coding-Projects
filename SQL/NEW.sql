create database ZOO;


CREATE table tbl_animalia
( animalia_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
animalia_type VARCHAR(50) NOT NULL
);

INSERT INTO tbl_animalia
(animalia_type)
VALUES 
('vertebrates'),
('invertebrates')
;

	SELECT * FROM tbl_animalia;

CREATE TABLE tbl_class (
class_id INT PRIMARY KEY  NOT NULL IDENTITY (100,1),
class_type  VARCHAR (50) NOT NULL 
); 

INSERT INTO tbl_class 
	(class_type)
	VALUES 
	('bird'),
	('repitalian'),
	('mamal'),
	('arthropod'),
	('fish'),
	('wore'),
	('cnidaria'),
	('echinoderm')
	 ;

	SELECT * FROM tbl_class;

CREATE table tbl_order
( order_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
order_type VARCHAR(50) NOT NULL
);
INSERT INTO tbl_order
	(order_type)
	VALUES 
	('varvivore'),
	('herbivore'),
	('onivore')
	 ;

	 CREATE table tbl_care (
care_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
care_type VARCHAR(50) NOT NULL,
care_specialist int not null
);

INSERT INTO tbl_care
	(care_id, care_type, care_specialist)
	VALUES 
	('care_0', 'replace the straw' , 1),
	('care_1', 'repair or replace broken toys' , 4),
	('care_2', 'bottle feed vitamins', 1),
	('care_3', 'human contact_pet subject', 2),
	('care_5', 'clean up animal waste' , 1),
	('care_6', 'move subject to exercise pen' , 1),
	('care_7', 'extensive dental work' , 3)
	 ;
	 	SELECT * FROM tbl_care;

	 
CREATE table tbl_nutrition
( nutrision_id INT PRIMARY KEY NOT NULL IDENTITY (2200,1),
nutrition_type VARCHAR(50) NOT NULL,
nutrition_cost MONEY not null
);

INSERT INTO tbl_nutrition
	(nutrition_type, nutrition_cost)
	VALUES 
	('raw fish', 1500),
	('living rodents', 600),
	('mixture of fruit and rice', 800),
	('warm bottle of milk', 600),
	('syringe feed broth', 600),
	('lard and seed mix', 300),
	('aphids', 150),
	('vitamins and warrow', 3500)
	 ;
	 	SELECT * FROM tbl_nutrition;


CREATE table tbl_habitat
( habitat_id INT PRIMARY KEY NOT NULL IDENTITY (5000,1),
habitat_type VARCHAR(50) NOT NULL,
habitat_cost MONEY not null
);

INSERT INTO tbl_habitat 
	(habitat_type, habitat_cost)
	VALUES 
	('tundra', 40000),
	('grassy gnoll with trees', 12000),
	('10 ft pond and rocks', 30000),
	('icy aquarium with snow facade', 50000),
	('short grass, shade and moat', 50000),
	('netted forest atrium', 10000),
	('jungle vines and winding branches', 15000),
	('cliff with shaded cave', 15000)
	 ;

	SELECT * FROM tbl_habitat;

	CREATE table tbl_specialist
( specialist_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
specialist_fname VARCHAR(50) NOT NULL,
specialist_lname VARCHAR( 50 ) NOT NULL,
specialist_contact VARCHAR(50) NOT NULL
);

INSERT INTO tbl_specialist
	(specialist_fname, specialist_lname, specialist_contact)
	VALUES 
	('margaret', 'nyguen', '384-576-2899'),
	('mary', 'fischer', '384-784-4856'),
	('arnold' , 'holden', '385-475-3944'),
	('kem' , 'byeascan', '384-485-4855'),
	('delmonte' , 'fyedo', '786-288-3749')
	 ;

	SELECT * FROM tbl_specialist;

CREATE TABLE tbl_species (
species_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
species_name VARCHAR(50) NOT NULL ,
species_animalia INT NOT NULL CONSTRAINT fk_animalia_id FOREIGN KEY REFERENCES tbl_animalia(animalia_id) ON UPDATE CASCADE ON DELETE CASCADE ,
species_class INT NOT NULL CONSTRAINT fk_class_id FOREIGN KEY REFERENCES tbl_class(class_id) ON UPDATE CASCADE ON DELETE CASCADE ,
species_order INT NOT NULL CONSTRAINT fk_order_id FOREIGN KEY REFERENCES tbl_order(order_id) ON UPDATE CASCADE ON DELETE CASCADE ,
species_habitat INT NOT NULL CONSTRAINT fk_habitat_id FOREIGN KEY REFERENCES tbl_habitat(habitat_id) ON UPDATE CASCADE ON DELETE CASCADE, 
species_nutrition INT NOT NULL CONSTRAINT fk_nutrition_id FOREIGN KEY REFERENCES tbl_nutrition(nutrision_id) ON UPDATE CASCADE ON DELETE CASCADE, 
species_care VARCHAR(50) NOT NULL CONSTRAINT fk_care_id FOREIGN KEY REFERENCES  tbl_care (care_id) ON UPDATE CASCADE ON DELETE CASCADE
);




SELECT * FROM tbl_habitat where habitat_id between 2 and 4 ;
SELECT * FROM tbl_nutrition where nutrision_id between 0 and 600 ;


--

