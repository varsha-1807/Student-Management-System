-- Create Database
CREATE DATABASE IF NOT EXISTS StudentDB;
USE StudentDB;

-- Create Students Table
CREATE TABLE IF NOT EXISTS Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Class VARCHAR(10)
);

-- Create Subjects Table
CREATE TABLE IF NOT EXISTS Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50)
);

-- Create Marks Table
CREATE TABLE IF NOT EXISTS Marks (
    MarkID INT PRIMARY KEY,
    StudentID INT,
    SubjectID INT,
    Marks INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);

-- Insert Sample Students
INSERT INTO Students VALUES
(1, 'Amit', 16, '10th'),
(2, 'Priya', 15, '9th'),
(3, 'Rahul', 16, '10th');

-- Insert Sample Subjects
INSERT INTO Subjects VALUES
(101, 'Math'),
(102, 'Science'),
(103, 'English');

-- Insert Sample Marks
INSERT INTO Marks VALUES
(1, 1, 101, 78),
(2, 1, 102, 85),
(3, 2, 101, 92),
(4, 2, 103, 88),
(5, 3, 102, 74);

-- Query: All Students
SELECT * FROM Students;

-- Query: Marks for student 'Amit'
SELECT s.Name, sub.SubjectName, m.Marks
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
WHERE s.Name = 'Amit';

-- Query: Average marks for each student
SELECT s.Name, AVG(m.Marks) AS AverageMarks
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
GROUP BY s.Name;
