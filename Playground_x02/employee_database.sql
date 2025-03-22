-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS employee_db;

-- Use the employee database
USE employee_db;

-- Create department table
CREATE TABLE department (
    dep_id INT PRIMARY KEY,  -- Department ID (Primary Key)
    dep_name VARCHAR(50) NOT NULL UNIQUE,  -- Department Name (Unique)
    dep_loc VARCHAR(50)  -- Department Location (More flexible size)
);

-- Insert data into department table 
INSERT INTO department (dep_id, dep_name, dep_loc) 
VALUES 
    (1001, 'FINANCE', 'SYDNEY'),
    (2001, 'AUDIT', 'MELBOURNE'),
    (3001, 'MARKETING', 'PERTH'),
    (4001, 'PRODUCTION', 'BRISBANE');

-- Create salary_grade table
CREATE TABLE salary_grade (
    grade INT PRIMARY KEY,  
    min_sal DECIMAL(7,2) NOT NULL,  
    max_sal DECIMAL(7,2) NOT NULL  
);

-- Insert data into salary_grade table 
INSERT INTO salary_grade (grade, min_sal, max_sal) 
VALUES 
    (1, 800, 1300),
    (2, 1301, 1500),
    (3, 1501, 2100),
    (4, 2101, 3100),
    (5, 3101, 9999);

-- Create employee table
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(20),
    job_name VARCHAR(20),
    manager_id INT,  -- This should reference another employee
    hire_date DATE,
    salary DECIMAL(7,2),
    commission DECIMAL(7,2),
    dep_id INT,  
    CONSTRAINT fk_employee FOREIGN KEY (dep_id) REFERENCES department(dep_id),
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(emp_id) -- Ensure managers exist
);

-- Insert data into employee table 
INSERT INTO employee (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) 
VALUES
    (68319, 'KAYLING', 'PRESIDENT', NULL, '1991-11-18', 6000.00, NULL, 1001),
    (66928, 'BLAZE', 'MANAGER', 68319, '1991-05-01', 2750.00, NULL, 3001),
    (67832, 'CLARE', 'MANAGER', 68319, '1991-06-09', 2550.00, NULL, 1001),
    (65646, 'JONAS', 'MANAGER', 68319, '1991-04-02', 2957.00, NULL, 2001),
    (67858, 'SCARLET', 'ANALYST', 65646, '1997-04-19', 3100.00, NULL, 2001),
    (69062, 'FRANK', 'ANALYST', 65646, '1991-12-03', 3100.00, NULL, 2001),
    (63679, 'SANDRINE', 'CLERK', 69062, '1990-12-18', 900.00, NULL, 2001),
    (64989, 'ADELYN', 'SALESMAN', 66928, '1991-02-20', 1700.00, 400.00, 3001),
    (65271, 'WADE', 'SALESMAN', 66928, '1991-02-22', 1350.00, 600.00, 3001),
    (66564, 'MADDEN', 'SALESMAN', 66928, '1991-09-28', 1350.00, 1500.00, 3001),
    (68454, 'TUCKER', 'SALESMAN', 66928, '1991-09-08', 1600.00, 0.00, 3001),
    (68736, 'ADNRES', 'CLERK', 67858, '1997-05-23', 1200.00, NULL, 2001),
    (69000, 'JULIUS', 'CLERK', 66928, '1991-12-03', 1050.00, NULL, 3001),
    (69324, 'MARKER', 'CLERK', 67832, '1992-01-23', 1400.00, NULL, 1001);
