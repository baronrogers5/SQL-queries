-- Creating tables
CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT "undecided"
);

SHOW tables;

DESCRIBE student;

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3,2);
ALTER TABLE student DROP gpa; 


-- Inserting data
INSERT INTO student VALUES(1, 'Jack', 'Biology'); 
INSERT INTO student VALUES(2, 'Kate', 'Sociology'); 
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
INSERT INTO student VALUES(4, 'Jack', 'Biology'); 
INSERT INTO student VALUES(5, 'Mike', 'Computer Science'); 

-- Insert for auto_incerement
INSERT INTO student(name, major) VALUES("Jake", "Biology");


-- Deleting Data
DELETE FROM student WHERE student_id = 2;


-- Quering data
SELECT * FROM student;

-- Updating data
UPDATE student 
SET 
    major = 'English'
WHERE student_id = 3;

UPDATE student 
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'BioChemistry'
WHERE major = 'Bio' OR major = 'undecided';

DELETE FROM student
WHERE student_id > 3 or name = 'Jake';


-- Querying data
SELECT *
FROM student
WHERE student_id <> 2 AND name IN ('Jack', 'Claire')
ORDER BY name DESC, student_id;
