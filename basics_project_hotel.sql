SELECT*FROM hotel.employees;

SELECT*FROM clients;

SELECT id, first_name, last_name, job_title 
FROM employees 
ORDER BY id;

SELECT e.id AS '№',
e.first_name AS 'FirstName',
e.last_name AS 'LastName',
e.job_title AS 'JobTitle'
FROM employees AS e ORDER BY id; 


SELECT id AS '№',
CONCAT(first_name, ' ', last_name) AS 'Full Name',
job_title AS 'JobTitle'
FROM employees 
ORDER BY id;


SELECT id AS '№',
CONCAT(first_name, ' ', last_name) AS 'Full Name',
'job_title', salary 
FROM employees 
ORDER BY id;

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name',
       job_title AS 'Job Title',
       salary AS 'Salary'
FROM employees
WHERE salary > 1000;

SELECT first_name FROM hotel.employees;
SELECT DISTINCT first_name FROM hotel.employees;

SELECT * FROM employees;

SELECT * FROM employees
WHERE department_id=1;

SELECT first_name,last_name,department_id FROM employees
WHERE NOT (department_id=3 OR department_id=4);

SELECT last_name,salary FROM employees
WHERE salary BETWEEN 1200 AND 2200;

SELECT first_name,last_name,department_id
FROM employees
WHERE department_id IN (1,3,4);

SELECT *FROM employees AS e
WHERE department_id=4 AND salary >= 1000;

SELECT last_name,department_id 
FROM employees
WHERE department_id IS NULL;

SELECT * FROM departments ;
INSERT INTO departments (name) VALUES ('Human Resources');

SELECT * FROM employees;
INSERT INTO employees (first_name,last_name,job_title,department_id,salary,hire_date)
VALUES ('Rosica','Vasileva','QA','2','1900.0','2024-02-23 10:35:00.000000'),
       ('Marti','Vasileva','QA','2','2300.0','2024-02-23 10:35:00.000000'),
       ('Iva','Vasileva','QA','2','2100.0','2024-02-23 10:35:00.000000');
       
CREATE TABLE employees_contacts
AS 
SELECT 
    id,
    first_name,
    CONCAT(first_name, ' ', last_name, '@hotel.com') AS email,
    'N/A' AS phone 
FROM 
    employees;

