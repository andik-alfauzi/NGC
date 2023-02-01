-- Function to Create Table Courses

CREATE TABLE courses (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(20),
    teachers_id INT,
    total_students INT
    );
    
select * from courses

--  Function to Create Table Teachers

CREATE TABLE TEACHERS (
  id int(20) not null PRIMARY KEY AUTO_INCREMENT,
  first_name varchar(25) not null,
  last_name varchar(50),
  school varchar(50) not null,
  hire_date date,
  salary numeric
)

-- Function to inserting data to table courses

INSERT INTO courses (name, teachers_id, total_students)
    VALUES  ('Calculus', 2, 20),
            ('Physics', 2, 10),
            ('Calculus', 1, 30),
            ('Computer Science', 1, 20),
            ('Politic', 13, 15),
            ('Algebra', 2, 10),
            ('Algebra', 13, 30),
            ('Computer Science', 10, 35),
            ('Life Science', 11, 20),
            ('Chemistry', 9, 22),
            ('Chemistry', 8, 16),
            ('Calculus', 5, 19),
            ('Politic', 4, 17),
            ('Biology', 6, 22),
            ('Physics', 3, 29),
            ('Biology', 8, 28),
            ('Calculus', 12, 34),
            ('Physics', 13, 34),
            ('Biology', 14, 25),
            ('Calculus', 15, 20);
            
SELECT * FROM courses

-- Function to inserting data to table teacher

Insert into TEACHERS (id, first_name, last_name, school, hire_date, salary) 
VALUES (1, 'Jannet', 'Smith', 'MIT', '2011-10-30', 36200),
	(2, 'Lee', 'Reynolds', 'MIT', '1993-05-22', 65000),
    (3, 'Samuel', 'Cole', 'Cambridge University', '2005-08-01', 43500),
    (4,'Samantha', 'Bush', 'Cambridge University', '2011-10-30', 36200),
    (5,'Betty', 'Diaz', 'Cambridge University', '2005-08-30', 43500),
    (6,'Kathleen', 'Roush', 'MIT', '2010-10-22', 38500),
    (7,'James', 'Diaz', 'Harvard University', '2003-07-18', 61000),
    (8,'Zack', 'Smith', 'Harvard University', '2000-12-29', 55500),
    (9,'Luis', 'Gonzales', 'Standford University', '2002-12-01', 50000),
    (10,'Frank', 'Abbers', 'Standford University', '1999-01-30', 66000);
    
SELECT * FROM TEACHERS

-- DQL for NGC 

SELECT * 
FROM TEACHERS
JOIN courses ON TEACHERS.id=courses.teachers_id
WHERE (courses.name, TEACHERS.salary) IN (

  -- Get Courses's Name and Maximum Salary of the Lecturer Who Teaches that Course

  SELECT courses.name, MAX(TEACHERS.salary)
  FROM TEACHERS
  JOIN courses ON TEACHERS.id=courses.teachers_id
  GROUP BY courses.name
)
ORDER BY courses.name ASC