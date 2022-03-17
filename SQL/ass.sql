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
care_id VARCHAR(50) PRIMARY KEY NOT NULL,
care_type VARCHAR(50) NOT NULL,
care_specialist int not null
);

INSERT INTO tbl_care
	(care_id , care_type, care_specialist)
	VALUES 
	('care_0', 'replace the straw' , 1),
	('care_1', 'repair or replace broken toys' , 4),
	('care_2', 'bottle feed vitamins', 1),
	('care_3', 'human contact_pet subject', 2),
	('care_4', 'clean up animal waste' , 1),
	('care_5', 'move subject to exercise pen' , 1),
	('care_6', 'drain and refill awuarium', 1),
	('care_7', 'extensive dental work' , 3)
	;

	 	SELECT * FROM tbl_care;

	 
CREATE table tbl_nutrition
( nutrition_id INT PRIMARY KEY NOT NULL IDENTITY (2200,1),
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
	 	SELECT species_name FROM tbl_nutrition where nutrition_id beetween  ;


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
species_nutrition INT NOT NULL CONSTRAINT fk_nutrition_id FOREIGN KEY REFERENCES tbl_nutrition(nutrition_id) ON UPDATE CASCADE ON DELETE CASCADE, 
species_care VARCHAR(50) NOT NULL CONSTRAINT fk_care_id FOREIGN KEY REFERENCES  tbl_care (care_id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO tbl_species
( species_name, species_animalia, species_class, species_order, species_habitat, species_nutrition, species_care)
values

('brown bear', 1, 102, 3, 5007, 2200, 'care_1'),
('jaguar', 1, 102, 1, 5007, 2200, 'care_4'),
('penguain', 1, 100, 1, 5003, 2200, 'care_6'),
('ghost bat', 1, 102, 1, 5007, 2204, 'care_2'),
('chicken', 1, 100, 3, 5001, 2205, 'care_0'),
('panda', 1, 102, 3, 5006, 2202, 'care_4'),
('bobcat', 1, 102, 1, 5001, 2204, 'care_5'),
('grey wolf', 1, 102, 1, 5000, 2201, 'care_4')
;

select * from  tbl_species ;

SELECT * FROM tbl_species where species_order = 3 ;

 Select a1.species_name as 'Species_Name:', a2.nutrition_type as 'Nutrition_Type:'
 from tbl_species a1
  inner join tbl_nutrition  a2 on a2.nutrition_type = a2.nutrition_type ;

SELECT
a1.species_name, a2.animalia_type,
a3.class_type, a4.order_type, a5.habitat_type,
a6.nutrition_type, a7.care_type
FROM tbl_species a1
INNER JOIN tbl_animalia a2 ON a2.animalia_id = a1.species_animalia
INNER JOIN tbl_class a3 ON a3.class_id = a1.species_class
INNER JOIN tbl_order a4 ON  a4.order_id = a1.species_order
INNER JOIN tbl_habitat a5  ON a5.habitat_id = a1.species_habitat
INNER JOIN tbl_nutrition a6  ON a6.nutrition_id = a1.species_nutrition
INNER JOIN tbl_care a7 ON  a7.care_id= a1.species_care
WHERE species_name = 'brown bear'
;

SELECT 
a1.species_care, 
a2.specialist_fname, a2.specialist_lname, a2.specialist_contact
from tbl_species a1
left join tbl_specialist a2 on a2.specialist_id = a2.specialist_id
where species_care = 'penguain'
;

select 
a1.specialist_fname, a1.specialist_lname, a1.specialist_contact
from tbl_specialist a1
inner join tbl_care  on  care_specialist= care_specialist
;

SELECT
a1.species_name, a2.habitat_type, a2.habitat_cost,
a3.nutrition_type, a3.nutrition_cost
FROM tbl_species a1
INNER JOIN tbl_habitat a2  ON a2.habitat_id = a1.species_habitat
INNER JOIN tbl_nutrition a3  ON a3.nutrition_id = a1.species_nutrition
WHERE species_name = 'ghost bat'
;

DROP TABLE tbl_species, tbl_animalia, tbl_care, tbl_class, tbl_habitat, tbl_nutrition, tbl_order, tbl_specialist;

IF EXISTS (SELECT 1 FROM  INFORMATION_SCHEMA TABLES tbl_species)
	DROP TABLE (tbl_species, tbl_animalia, tbl_care, tbl_class, tbl_habitat, tbl_nutrition, tbl_order, tbl_specialist);

	PRINT 'HELLO WORLD!'

declare @myvariable int
set @myvariable = 6
print @myvariable

declare @var1 int, @var2 int
set @var1 = 3
set @var2 = 5

print 'i have ' + convert(varchar(50), @var1) + ' dollars'

print 'having fun with ' + ' tsql and ms sql server!'



SELECT s FROM tbl_nutrition where nutrition_id between 2202and 2206;


--

