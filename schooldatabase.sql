Create database School ;


create table Classes(
 Class_ID int NOT NULL PRIMARY KEY,
Class_Name varchar (255),
);
select * from Classes

create table Students(
 Student_ID int NOT NULL PRIMARY KEY,
Student_Name varchar (255)
);

create table Instructors(
 Instructor_ID int NOT NULL PRIMARY KEY,
Instructor_Name varchar (255)
);
select * from Instructors

ALTER TABLE Students 
ADD 
Class_ID int,
Instructor_ID INT ;

SELECT * FROM Students

ALTER TABLE Students 
ADD FOREIGN KEY (Class_ID) references Classes (Class_ID);

ALTER TABLE Students 
Add CONSTRAINT FK_Instructors
 FOREIGN KEY (Instructor_ID) references Instructors (Instructor_ID)


 INSERT INTO Classes (Class_Name, Class_ID)
VALUES ( 'C# Boot Camp' , 1);

 INSERT INTO Classes (Class_Name, Class_ID)
VALUES ( 'Software Developer Boot Camp' , 2);

INSERT INTO Students(Student_ID, Student_Name)
VALUES (1, 'John Grey')
INSERT INTO Students(Student_ID, Student_Name)
VALUES (2, 'Alex Lemon')
INSERT INTO Students(Student_ID, Student_Name)
VALUES (3, 'Brett Smith')
INSERT INTO Students(Student_ID, Student_Name)
VALUES (4, 'Michalina Brodnicka')
INSERT INTO Students(Student_ID, Student_Name)
VALUES (5, 'Victoria Kasiñska' )
INSERT INTO Students(Student_ID, Student_Name)
VALUES (6, 'Piotr Ongus')

INSERT INTO Instructors(Instructor_ID, Instructor_Name) 
Values (25, 'Micha³ Lotek')
INSERT INTO Instructors(Instructor_ID, Instructor_Name) 
Values (50, 'Ahmed Azaah')

UPDATE Students
SET Class_ID = 1, Instructor_ID = 25
where Student_ID = 1

UPDATE Students
SET Class_ID = 1, Instructor_ID = 25
where Student_ID = 3

UPDATE Students
SET Class_ID = 1, Instructor_ID = 25
where Student_ID = 6

UPDATE Students
SET Class_ID = 2, Instructor_ID = 50
where Student_ID = 2

UPDATE Students
SET Class_ID = 2, Instructor_ID = 50
where Student_ID = 4

UPDATE Students
SET Class_ID = 2, Instructor_ID = 50
where Student_ID = 5

SELECT * FROM Students



SELECT * FROM Instructors
SELECT Student_ID, Student_Name, Class_ID, Instructors.Instructor_ID
from Students
inner join Instructors
on Instructors.Instructor_ID = Instructors.Instructor_Name

SELECT *
FROM Students
ORDER BY Student_Name ASC
