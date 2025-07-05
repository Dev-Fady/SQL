create database collegeDB

use collegeDB
go

CREATE TABLE Students (
    Stdno CHAR(5) NOT NULL PRIMARY KEY,
    Firstname VARCHAR(25) NOT NULL,
    Lastname VARCHAR(25) NOT NULL,
    Depart CHAR(4)
);
CREATE TABLE Course (
    CourseId CHAR(8) NOT NULL PRIMARY KEY,
    CourseTitle VARCHAR(50) NOT NULL UNIQUE,
    Cost DECIMAL(6,2) CHECK (Cost >= 0),
    Credit_Hours INT DEFAULT 2 CHECK (Credit_Hours >= 0 AND Credit_Hours <= 200)
);
CREATE TABLE Semester (
    semesterID CHAR(5) NOT NULL PRIMARY KEY,
    semestercode INT CHECK (semestercode >= 1 AND semestercode <= 4),
    semesterYear INT CHECK (semesterYear >= 2000 AND semesterYear <= 9999)
);
CREATE TABLE Register (
    Stdno CHAR(5) NOT NULL,
    courseID CHAR(8) NOT NULL,
    semesterID CHAR(5) NOT NULL,
    grade CHAR(2),
    mark DECIMAL(4,2) CHECK (mark >= 0 AND mark <= 100),
    PRIMARY KEY (Stdno, courseID, semesterID),
    FOREIGN KEY (Stdno) REFERENCES Students(Stdno) ON DELETE CASCADE,
    FOREIGN KEY (courseID) REFERENCES Course(CourseId) ON DELETE CASCADE,
    FOREIGN KEY (semesterID) REFERENCES Semester(semesterID) ON DELETE CASCADE
);

INSERT INTO Students VALUES 
('S0001', 'Khaled', 'Marwan Ali', 'CS'),
('S0201', 'Mosa', 'Ahmad Majd', 'IT'),
('S0211', 'Alnasser', 'Ameen', 'CS'),
('S0421', 'Mohammad', 'Omar Riyadh', 'IT'),
('S0711', 'Alsaleh', 'Abdulaziz Saleh', 'CS');

INSERT INTO Course VALUES 
('CS1301', 'Programming 1', 5000.00, 3),
('CS2301', 'Programming 2', 7000.00, 3),
('CSC152', 'C Programming', 8200.50, 4),
('CSC153', 'Object Oriented Programming', 8480.00, 4),
('IS3511', 'Database 2', 7530.00, 2),
('IT124', 'Java Programming', 7680.00, 3),
('IT125', 'Database 1', 6435.50, 3);

INSERT INTO Semester VALUES 
('SM01', 1, 2012),
('SM02', 2, 2012),
('SM03', 1, 2013),
('SM04', 2, 2013);

INSERT INTO Register VALUES 
('S0001', 'CSC152', 'SM02', 'A', 92.00),
('S0001', 'IS3511', 'SM02', 'B+', 80.00),
('S0001', 'IT125', 'SM01', 'A+', 96.00),
('S0201', 'CS1301', 'SM01', 'C', 70.00),
('S0201', 'CS2301', 'SM02', 'C+', 75.00),
('S0201', 'CSC153', 'SM01', 'D+', 65.00),
('S0201', 'IT124', 'SM01', 'A+', 98.00),
('S0201', 'IT125', 'SM02', 'B+', 87.00),
('S0211', 'CSC153', 'SM01', 'F', 50.00),
('S0421', 'IS3511', 'SM03', 'D+', 65.00),
('S0421', 'IT124', 'SM02', 'F', 57.00),
('S0421', 'IT125', 'SM02', 'B', 84.00),
('S0711', 'CSC152', 'SM01', 'F', 55.00),
('S0711', 'CSC152', 'SM03', 'C+', 77.00),
('S0711', 'IS3511', 'SM03', 'A+', 95.00);
