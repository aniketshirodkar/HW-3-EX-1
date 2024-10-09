SELECT Name FROM Students;
SELECT * FROM Students WHERE Age > 30;
SELECT Name FROM Students WHERE Gender='F' AND Age=30;  
SELECT Points FROM Students WHERE Name='Alex';
INSERT INTO Students VALUES(7, 'Aniket', '18', 'M', 500);
UPDATE Students SET Points = 700 WHERE Name='Basma';
UPDATE Students SET Points = 10 WHERE Name='Alex';

CREATE TABLE graduates(
    ID INTEGER  PRIMARY KEY AUTOINCREMENT,
    Name  TEXT NOT NULL UNIQUE,
    Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
);

INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM Students WHERE Students.Name='Layal';
UPDATE graduates SET Graduation='08-09-2018' WHERE Name='Layal';
DELETE FROM students WHERE Name='Layal';

SELECT employees.Name, companies.Name, companies.Date FROM Employees JOIN Companies ON Employees.Company = Companies.Name;
SELECT employees.Name FROM Employees JOIN Companies ON Employees.Company =  Companies.Name WHERE Companies.Date < 2000;
SELECT companies.Name FROM companies JOIN employees ON companies.Name = employees.Company WHERE Employees.Role = "Graphic Designer";

SELECT name from students where points=(SELECT MAX(points) from students);
SELECT AVG(points) from students;
SELECT COUNT(Name) from students where points=500;
SELECT Name from students WHERE Name GLOB '*s*';
SELECT name from students ORDER BY points DESC;