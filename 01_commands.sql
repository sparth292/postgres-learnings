-- table creation
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  salary float
);

-- table insertiona
INSERT INTO EMPLOYEE VALUES (749, 'Parth', 'Sales' , 10000.0);
INSERT INTO EMPLOYEE VALUES (750, 'Kunj', 'Accounting' , 5000.0);
INSERT INTO EMPLOYEE VALUES (751, 'Ninad', 'Sales' , 4000.0);

-- displaying all the data
SELECT * FROM EMPLOYEE;

-- displaying the data of employees with salary below 10000
SELECT * FROM EMPLOYEE WHERE salary<10000;

-- displaying the grouped data (only department and avg salary will be shown)
-- Parth + ninad = 14000 and then /2 which gives you the answer 7000
-- and for Accounting the salary of kunj will be displayed as there is no extra enteries for the employees in Accounting department
SELECT dept, AVG(salary) FROM EMPLOYEE GROUP BY dept;

