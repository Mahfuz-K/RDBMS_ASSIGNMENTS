--Using Postgresql

--For the given schema, write SQL queries to perform the following:

--1. From the following tables write a SQL query to find the details of an employee.
--Return full name, email, salary, Department Name, postal code, and City.

SELECT concate(" ", e.first_name,e.last_name) AS "full name",e.email,e.salary,d.department_name,l.postal_code,l.City
FROM ((employees e
INNER JOIN department d ON e.department_id=d.department_id)
INNER JOIN locations l ON d.location_id = l.location_id
);

--2. From the following tables write a SQL query to find the departments whose location is
--in "Jammu Kashmir" or "Jharkhand". Return Department Name, state_province,
--street_address.

SELECT d.department_name,l.state_province,l.street_address
FROM departments d
INNER JOIN locations ON d.location_id=l.location_id
WHERE l.state_province ="Jammu Kashmir" OR l.state_province="Jharkhand";

--3. From the following tables write a SQL query to find the count of employees present in
--different jobs whose average salary is greater than 10,000. Return all the jobs with
--employee count, Job Name, and average salary.

SELECT  j.job_title,count(e.employee_id) as "no of emplpoyees",AVG(e.salary) as "average salary"
FROM employees e,jobs j
WHERE e.job_id=j.job_id 
GROUP BY j.job_title
 HAVING AVG(e.salary)>10000;


--4. From the following table write a SQL query to find all the first_names and
-- last_names in both dependents and employees tables. Return the duplicate records as
-- well and order the records in descending order of the last_name column.

SELECT e.first_name,e.last_name
FROM employees e,dependents d 
WHERE e.employee_id=d.employee_id
ORDER BY e.last_name DESC;

-- 5. From the following table write a SQL query to list every employee that has a manager
-- with the name of his or her manager.

SELECT e.first_name,e1.first_name
FROM employees e,employees e1
WHERE e.manager_id=e1.employee_id;

-- 6. Find the departments that have more than 5 employees earning a salary greater than
-- 50,000 and are located in either New York or California. Include the department name,
-- location, and the number of employees meeting the criteria.

SELECT d.department_name, l.city , count(e.employee_id) AS "no of employee"
FROM departments d INNER JOIN employees e ON d.department_id=e.department_id inner join locations l on d.location_id=l.location_id
WHERE e.salary>50000
GROUP BY d.department_name, l.city
HAVING COUNT(e.employee_id)>5;

-- 7. List any employees who have dependents and have a job title that includes the word
-- 'manager', and sort the results by department name in ascending order.

SELECT e.first_name, e.last_name
FROM employees e 
INNER JOIN dependents d ON e.employee_id=d.employee_id 
INNER JOIN departments dpt ON dpt.department_id=e.department_id 
INNER JOIN jobs j ON j.job_id = e.job_id
WHERE j.job_title like '%manager%'
ORDER BY dpt.department_name;

-- 8. Add a column in the dependent table called “city” depicting their current location of
-- stay. Find all employees who have been hired in the past 3 years and have dependents
-- living in a city that is different from the city they work in (if I work in Kolkata, then my
-- dependent should not be in Kolkata).
-- Additionally, only include employees whose salary is greater than the average salary of
-- their job title(suppose, my job_title is ”developer” and the salary is 80k, and the average
-- salary under the same job_title “developer” is 70k), and whose manager's job title
-- includes the word 'director'. Finally, include the department name and location of each
-- employee, and sort the results by department name in ascending order

ALTER TABLE dependents ADD COLUMN "city" VARCHAR(255);
UPDATE dependents SET city='jamshedpur' WHERE dependent_id=5001; 
UPDATE dependents SET city='kolkata' WHERE dependent_id=5002; 
UPDATE dependents SET city='ranchi' WHERE dependent_id=5003; 
UPDATE dependents SET city='dhanbad' WHERE dependent_id=5004; 
UPDATE dependents SET city='durgapur' WHERE dependent_id=5005;