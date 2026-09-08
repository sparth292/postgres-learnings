CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO students (id, name, email)
VALUES (02, 'Deep M.', 'mdeep@gmail.com') , (62, 'Prayag U.', 'uprayag@gmail.com');

SELECT * FROM STUDENTS;

ALTER TABLE STUDENTS ADD COLUMN dept varchar(20);

UPDATE students
SET dept = 'EXTC'
WHERE id = 2 OR id = 62;

create view student_dept_seperation AS select * from students where dept = 'EXTC';

SELECT * FROM student_dept_seperation;
