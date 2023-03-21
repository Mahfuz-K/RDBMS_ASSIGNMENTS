--Using Postgresql

--Q1  Select all records in table “Employees” whose last name starts with ‘Sah’

SELECT * 
FROM employees 
WHERE last_name LIKE 'Sah%';

--Q2 Select 10 employees who were hired between 1st June, 2021 to 15th February,
--2022. Start retrieving from the 4th record in the table

SELECT employee_id 
FROM employees
WHERE hire_date BETWEEN '01-06-2021' AND '15-02-2021' LIMIT 10 OFFSET 3;

--Q3 Find distinct top 5 salary values (only salary column), using alias for column as
--“Top 5 salaries”

SELECT DISTINCT salary as "Top 5 salary"
from employees
ORDER BY salary desc
LIMIT 5;

--Q4 Find first_name, last_name and email of employees from the employees table
--where salary lies between 25000 to 45000

SELECT first_name,last_name, email 
FROM employees
WHERE salary BETWEEN 25000 and 45000

--Q5  Write a query to find first_name, manager_id and salary where the
--department_id is 101 and sort the result in ascending order of salary.

SELECT first_name,manager_id,salary
FROM employees
WHERE  department_id=101
ORDER BY salary 

--Q6  Find all the first_name that start with the letter “A”, and find all the last_name
--that have “TH” in the 2nd and 3rd positions.

SELECT first_name, last_name 
FROM employees
WHERE first_name LIKE "A%" and last_name LIKE "_TH%"
