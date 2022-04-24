

CREATE PROCEDURE  createZOODB
as 
begin 

CREATE table tbl_ANIMALS
( ANIMALS_ID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
ANIMALS_SIZE VARCHAR(50) NOT NULL
);

INSERT INTO TBL_ANIMALS
(ANIMALS_SIZE)
VALUES 
('BIG'),
('MEDIUM'),
('SMALL');

SELECT * FROM tbl_ANIMALS;

CREATE TABLE TBL_CLASS (
CLASS_ID INT PRIMARY KEY  NOT NULL IDENTITY (100,1),
CLASS_TYPE  VARCHAR (50) NOT NULL 
); 

INSERT INTO TBL_CLASS 
	(CLASS_TYPE)
	VALUES 
	('BIRD'),
	('FISH'),
	('REPTILE'),
	('MAMMAL'),
	('BEACHES')
	 ;

SELECT * FROM TBL_CLASS;


CREATE table tbl_habitat
( habitat_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
home_type VARCHAR(50) NOT NULL
);

INSERT INTO tbl_habitat 
	(home_type)
	VALUES 
	('in air'),
	('in water'),
	('in forest'),
	('in home')
	 ;
SELECT * FROM tbl_habitat;
SELECT * FROM tbl_habitat where habitat_id between 2 and 4 ;
SELECT * FROM tbl_nutrision where nutrision_id between 0 and 600 ;



CREATE table tbl_nutrision
( nutrision_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
nutrision_type VARCHAR(50) NOT NULL
);
INSERT INTO tbl_nutrision
	(nutrision_type)
	VALUES 
	('love'),
	('hugs'),
	('feeding'),
	('wash')
	 ;

CREATE table tbl_order
( order_ID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
king_jungle VARCHAR(50) NOT NULL
);
INSERT INTO tbl_order
	(king_jungle)
	VALUES 
	('lion'),
	('elephant'),
	('monkey')
	 ;



 UPDATE TBL_CLASS SET CLASS_TYPE = 'BIRDS' WHERE CLASS_TYPE = 'BIRD' ;

 SELECT * FROM TBL_CLASS;

 SELECT REPLACE(CLASS_TYPE, 'BIRDS', 'BIRD') FROM TBL_CLASS;

 SELECT * FROM TBL_CLASS;

  SELECT   CLASS_TYPE FROM TBL_CLASS WHERE CLASS_TYPE = 'BIRDS' ;

 SELECT  COUNT (CLASS_TYPE) FROM TBL_CLASS WHERE CLASS_TYPE = 'BIRDS' ;

  SELECT  UPPER (CLASS_TYPE) FROM TBL_CLASS WHERE CLASS_TYPE = 'BIRDS' ;

  CREATE TABLE TBL_PERSONS (
  PERSON_ID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
  PERSON_FNAME VARCHAR (50) NOT NULL,
  PERSON_SNAME VARCHAR (50) NOT NULL,
  PERSON_ADDRESS VARCHAR (50) NOT NULL,
  PERSON_NUMBER VARCHAR (50) NOT NULL
  );

  INSERT INTO TBL_PERSONS
	(PERSON_FNAME, PERSON_SNAME, PERSON_ADDRESS, PERSON_NUMBER)
	VALUES 
	('Michalina', 'Brodnicka', 'bs130qa 28 lampton grove',' 0730654345'),
	('Kasia', 'Bu³a', 'bs132we 30 main st', '0452565443'),
	('asia', 'lee', 'bs12tqa 280  slow grove',' 3758349574'),
	('alex', 'smith', 'bs110pa 234 union st',' 5478537593')
	 ;

	  SELECT * FROM TBL_PERSONS;

select PERSON_FNAME from TBL_PERSONS where PERSON_SNAME like 'L%' ;
		 
select PERSON_FNAME from TBL_PERSONS where PERSON_ID between 2 and 4; ;

select  PERSON_FNAME, PERSON_SNAME, PERSON_ADDRESS, PERSON_NUMBER, PERSON_ID from TBL_PERSONS where PERSON_SNAME like '_u%a' ;

delete TBL_PERSONS where PERSON_ID='10';

UPDATE TBL_PERSONS SET PERSON_SNAME = 'smash' WHERE PERSON_SNAME = 'peak';


select  PERSON_FNAME as 'First name' , PERSON_SNAME as 'Surname' , PERSON_ADDRESS as 'home' , PERSON_NUMBER  as 'phone' , PERSON_ID as 'code' from TBL_PERSONS where PERSON_SNAME like 'sm%' order by PERSON_SNAME ;

drop table TBL_PERSONS ;

end