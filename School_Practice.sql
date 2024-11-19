-- Create a database
CREATE DATABASE school_db;
USE school_db;

-- create a table called students
CREATE TABLE students(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
grade_level VARCHAR(20),
average_score DECIMAL(4,2)
);

-- Insert Data into a Table
INSERT INTO students(name, grade_level, average_score)
VALUES ("John Doe", '10th', 88.50);

-- Insert Multiple Records
INSERT INTO students(name, grade_level, average_score)
VALUES ("Jane Smith", "10th", 91.20),
	   ("Mark Lee", "11th", 85.75),
       ("Emily Davis", "12th", 90.00);

-- Retrieve All Records
SELECT * FROM students;

-- Retrieve Specific Columns
SELECT name, average_score
FROM students;

-- Update a Record
UPDATE students
SET average_score = '90.00'
WHERE name = 'John Doe';

-- Delete a Record
DELETE FROM students
WHERE name = 'Mark Lee';

-- Filter and Retrieve Records
SELECT name
FROM students
WHERE grade_level = '10th' AND average_score > 90.00;

-- Order Records
SELECT * FROM students ORDER BY average_score desc;

DROP TABLE students;
-- drop the database
DROP DATABASE school_db;