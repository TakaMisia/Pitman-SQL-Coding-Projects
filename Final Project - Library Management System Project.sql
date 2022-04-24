CREATE DATABASE Library_Managment

<--Creates basic tables with PK and FK-->

CREATE TABLE LIBRARY_BRANCH (
BranchID INT NOT NULL PRIMARY KEY,
BranchName varchar (255),
Address varchar (255)
);
<--Insert value to tables LIBRARY BRANCH -->
INSERT INTO LIBRARY_BRANCH (BranchID, BranchName, Address)
VALUES
	(2, 'Sharpstown', 'London, Main St 26'),
	(4, 'Dizzy', 'Bristol, Grove 6'),
	(6, 'Checky', 'Newport, Mill View 234'),
	(8, 'Brownie', 'Dover, Victorian 12a'),
	(10, 'Lovely', 'Newcastle, Green 24/3 '),
	(12, 'Stones', 'Chippenham, Queens Square 2')

	SELECT * FROM LIBRARY_BRANCH

CREATE TABLE BOOKS (
BooksID INT NOT NULL PRIMARY KEY,
Title varchar (255),
PublisherName varchar (255) FOREIGN KEY REFERENCES PUBLISHER (PublisherName)
);

			<--Insert value to tables BOOKS -->
	INSERT INTO BOOKS(BooksID, Title)
VALUES 
	(45, 'The Lost Tribe'),
	(11, 'Win'),
	(90, 'King'),
	(31, 'Pround of my self'),
	(788, 'Rich Dad'),
	(51, 'Meterolodgy'),
	(78, 'Red wolf'),
	(667, 'Punisher'),
	(671, 'Czara wdowa'),
	(55, 'Pop in 2022'),
	(321, '5 ways to loose weight'),
	(122, 'Happy married'),
	(456, 'Wiersze dla dzieci'),
	(331, 'Lucky man'),
	(222, 'Pens'),
	(543, 'Fav dog'),
	(999,  'Starwars'),
	(675, 'Leadership secrets'),
	(976, 'Romanian  artist 1980s'),
	(14, 'Mechanika dla g³upków ')

			SELECT * FROM BOOKS

UPDATE  BOOKS
SET PublisherName= 'Bob Slow'
where  BooksID = 45

UPDATE  BOOKS
SET PublisherName= 'Basia Open'
where  BooksID = 11

UPDATE  BOOKS
SET PublisherName= 'Basia Open'
where BooksID = 31

UPDATE  BOOKS
SET PublisherName= 'Basia Open'
where BooksID = 788

UPDATE  BOOKS
SET PublisherName= 'Basia Open'
where BooksID = 31

UPDATE  BOOKS
SET PublisherName= 'Basia Open'
where BooksID= 90

UPDATE  BOOKS
SET PublisherName= 'Eva Gray'
where BooksID = 976

UPDATE  BOOKS
SET PublisherName= 'Eva Gray'
where BooksID = 999

UPDATE  BOOKS
SET PublisherName= 'Sara Creme'
where BooksID = 543

UPDATE  BOOKS
SET PublisherName='Sara Creme'
where BooksID =222

UPDATE  BOOKS
SET PublisherName= 'Brett Dickson'
where BooksID = 331

UPDATE  BOOKS
SET PublisherName= 'Zax Klops'
where BooksID = 456

UPDATE  BOOKS
SET PublisherName= 'Zax Klops'
where BooksID = 122

UPDATE  BOOKS
SET PublisherName= 'Rose Gelatti'
where BooksID = 321

UPDATE  BOOKS
SET PublisherName= 'Rose Gelatti'
where BooksID = 55

UPDATE  BOOKS
SET PublisherName= 'Jerry Dew'
where BooksID = 671

UPDATE  BOOKS
SET PublisherName= 'Jerry Dew'
where BooksID = 667

UPDATE  BOOKS
SET PublisherName= 'Kasia Lucky'
where BooksID = 78

UPDATE  BOOKS
SET PublisherName= 'Kasia Lucky'
where BooksID = 51

UPDATE  BOOKS
SET PublisherName= 'Kasia Lucky'
where BooksID = 14

	UPDATE  BOOKS
SET PublisherName= 'Kasia Lucky'
where BooksID = 675
	
	

CREATE TABLE BOOK_COPIES (
BooksID INT  FOREIGN KEY REFERENCES BOOKS(BooksID),
BranchID INT  FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID),
Number_Of_Copies varchar NOT NULL
);
drop table BOOK_COPIES

INSERT INTO BOOK_COPIES (BooksID, BranchID, Number_Of_Copies)
VALUES 
	(45, 2, 8),
	(11, 2, 2),
	(90, 2, 3),
	(31, 4, 15),
	(788, 4, 45),
	(51, 6, 80),
	(78, 6, 4),
	(667, 6, 9),
	(671, 8, 3),
	(55, 8, 100),
	(321, 12, 49),
	(122, 12, 300),
	(456, 10, 63),
	(331, 12, 41),
	(222, 10, 88),
	(543, 10, 75),
	(999,  4, 88),
	(675, 2, 47),
	(976, 10, 1000),
	(14, 4, 123)

				SELECT * FROM BOOK_COPIES

CREATE TABLE BOOK_AUTHORS (
BooksID INT  FOREIGN KEY REFERENCES BOOKS(BooksID),
AuthorName varchar(255)
);
			<--Insert value to tables BOOK_Author -->
	INSERT INTO BOOK_AUTHORS (BooksID, AuthorName)
VALUES 
	(45, 'Anna W³och'),
	(11, 'Werona Kilich'),
	(90, 'Chad Bing'),
	(31, 'Ann Grey'),
	(788, 'Adolf Rich '),
	(51, 'Tyron Smith'),
	(78, 'Shannon wolf'),
	(667, 'Vasilica Plama'),
	(671, 'Cezary Pazura'),
	(55, 'Jan Polek'),
	(321, 'Werona Kilich'),
	(122, 'Jan Polek'),
	(456, 'Werona Kilich'),
	(331, 'Vasilica Plama'),
	(222, 'Jan Polek'),
	(543, 'Anna W³och'),
	(999,  'Jan Polek'),
	(675, 'Shannon wolf'),
	(976, 'Tyron Smith'),
	(14, 'Tyron Smith')

			SELECT * FROM BOOK_AUTHORS
SELECT * FROM BOOK_AUTHORS WHERE AuthorName = 'Tyron Smith';
			<--Insert value to tables BOOK_COPIES -->



CREATE TABLE BORROWER (
CardNo INT NOT NULL PRIMARY KEY ,
Name varchar (255),
Address varchar (255),
Phone INT NOT NULL
);

	<--Issue with datatype convert INT TO FLOAT -->
		ALTER TABLE BORROWER
	ALTER COLUMN Phone FLOAT NOT NULL
		<--Insert value to tables BORROWER -->

INSERT INTO BORROWER(CardNo, Name, Address, Phone)
VALUES 
	(12, 'Lisa Burke', 'London, Main St 26', 2109481128),
	(24, 'Michalina Brodnicka', 'Bristol, Grove 6', 2104563648),
	(36, 'Ewelina Smith', 'Newport, Mill View 234', 21070983648),
	(48, 'Gordon Gold', 'Dover, Victorian 12a', 2127483611),
	(50, 'Piotr Ongus', 'Newcastle, Green 24/3 ', 2133363648),
	(62, ' Gerard Stone', 'Bath, Yellow Bunny  122', 2112433648),
	(70, 'Alex Lemon', 'Swindon, Rish 12 ', 2108748648),
	(82, 'Silviu Bree', 'Chippenham, Queens Square 2', 2048463648)
	
	SELECT * FROM BORROWER

CREATE TABLE BOOK_LOANS (
BooksID INT  FOREIGN KEY REFERENCES BOOKS(BooksID),
BranchID INT  FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID),
CardNo INT  FOREIGN KEY REFERENCES BORROWER(CardNo),
DateOut VARCHAR (255) NOT NULL,
DateDue Varchar (255) NOT NULL
);

	<--Issue with datatype convert INT TO DATE -->
	ALTER TABLE BOOK_LOANS
	ALTER COLUMN DateOut  varchar NOT NULL
	ALTER TABLE BOOK_LOANS 
	ALTER COLUMN DateDue varchar NOT NULL

	<-- example date current -->
	select convert(varchar, getdate(), 105)

	<--RESULTS OF RELATION BETWEEN 2 TABLES-->
SELECT CONSTRAINT_NAME,
   TABLE_SCHEMA ,
   TABLE_NAME,
   CONSTRAINT_TYPE
   FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	 WHERE TABLE_NAME='BOOK_LOANS'

	 <--DROP FK TO INSERT VALUES-->
 ALTER TABLE BOOK_LOANS
DROP CONSTRAINT FK__BOOK_LOAN__CardN__7D2E8C24


				<--Insert value to tables BOOK_LOANS -->

INSERT INTO BOOK_LOANS (BooksID, BranchID, CardNo, DateOut, DateDue)
VALUES 
	('45', '2', '12', '2022-06-12', '2021-06-01'),
	('11',' 2', '24', '2022-07-02', '2021-07-01'),
	('90', '2', '36', '2022-08-03', '2021-08-01'),
	('31', '4', '36', '2022-09-07', '2021-09-01'),
	('788', '4', '48', '2022-06-06', '2021-06-01'),
	('51', '6', '48', '2022-05-05', '2021-05-01'),
	('78', '6', '60', '2022-04-04', '2021-04-01'),
	('667', '6', '72', '2022-12-03', '2021-12-01'),
	('671', '8', '36', '2022-11-02', '2021-11-01'),
	('55', '8', '12', '2022-07-02', '2021-07-01'),
	('321', '12', '48', '2022-01-01', '2021-01-01'),
	('122', '12', '36', '2023-02-15', '2022-02-01'),
	('456', '10', '60', '2022-03-14', '2021-03-01'),
	('331', '12', '24', '2022-06-13', '2021-06-01'),
	('222', '10', '24', '2023-07-18', '2022-07-01'),
	('543', '10', '36', '2022-06-17', '2021-06-01'),
	('999',  '4', '72',' 2022-09-31', '2021-09-01'),
	('675', '2', '48', '2022-04-19', '2021-04-01'),
	('976', '10', '12',' 2022-10-13',' 2021-10-01'),
	('14', '4', '12', '2022-03-11', '2021-03-01')

				SELECT * FROM BOOK_LOANS

				drop table BOOK_LOANS
SELECT * FROM BORROWER
GO
SELECT * FROM BOOK_LOANS


CREATE TABLE PUBLISHER (
PublisherName varchar (255) PRIMARY KEY ,
Address varchar (255),
Phone INT NOT NULL
);

<--Issue with datatype convert INT TO FLOAT -->
		ALTER TABLE PUBLISHER
	ALTER COLUMN Phone FLOAT NOT NULL
			<--Insert value to tables PUBLISHER -->

	INSERT INTO PUBLISHER( PublisherName, Address, Phone)
VALUES 
	( 'Kasia Lucky', 'London, Main St 876', 07345481128),
	( 'Eva Gray', 'Bristol, Avenue 236', 0670463648),
	( 'Basia Open', 'Newport, Hill 24', 07070983648),
	( 'Brett Dickson', 'Dover, Road  76', 0762453611),
	( 'Jerry Dew', 'Newcastle, Reading 8 ', 0749296675),
	( 'Zax Klops', 'Bath, Oak 12/34', 07495534822),
	( 'Rose Gelatti', 'Swindon, Point 54 ', 07494568229),
	( 'Sara Creme', 'Chippenham, Black Square 42', 07495748229),
	( 'Bob Slow', 'Aberdeen, Main 12', 07496438229),
	( 'Susan Cop', 'Cardiff, Union 212a', 44568759677)

		SELECT * FROM PUBLISHER



				SELECT * FROM
				((Book_Loans FULL OUTER JOIN Borrower
				ON Book_Loans.CardNo = Borrower.CardNo)
				FULL OUTER JOIN Books
				ON Book_Loans.BooksID = Books.BooksID);


				SELECT * FROM BOOK_AUTHORS;
SELECT * FROM BOOKS;
SELECT * FROM BOOK_COPIES;
SELECT * FROM LIBRARY_BRANCH;
SELECT * FROM BOOKS;
SELECT * FROM BORROWER;
SELECT * FROM PUBLISHER;


<--something-->

		select LIBRARY_BRANCH.BranchName, BOOK_COPIES.Number_Of_Copies, BOOKS.Title from BOOK_COPIES
		inner join BOOKS on BOOKS.BooksID = BOOK_COPIES.BooksID
		inner join LIBRARY_BRANCH on LIBRARY_BRANCH.BranchName = BOOK_COPIES.BranchID
		where LIBRARY_BRANCH.BranchName = 'Sharpstown'

		select 'Sharpstown',  convert (int, convert (varchar(255), 'Sharpstown'))
		<--Issue with datatype convert INT TO varchar -->
		ALTER TABLE library_branch
	ALTER COLUMN branchName int not null
				<--1 QUERY = 8-->
			
			SELECT * FROM LIBRARY_BRANCH
			GO
			SELECT * FROM BOOKS
			GO

			SELECT * FROM BOOK_COPIES
			WHERE BranchID = 2 
			AND BooksID = 45

		
				<--2 QUERY =2 -->

			SELECT * FROM BOOK_COPIES
			WHERE BooksID = 45	

						<--3 QUERY -->
						select * from borrower
						go 
						select CardNo , DateOut from BOOK_LOANS
						where DateOut < '2022-06-12'

						<--doesnt work -->
select a1.books_copies_branchID a1.Number_Of_Copies
a2.borrower_name,
a3.Books_Tittle
from BOOK_COPIES
inner join borrower a2 on a2.borrower_name = a2.borrower_name
inner join books a3 on a3.books_tittle = a3.books_tittle ;
