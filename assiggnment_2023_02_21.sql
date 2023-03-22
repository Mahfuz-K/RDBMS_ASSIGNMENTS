--Q1.--Write the query to get the department and department wise total(sum) salary,
--display it in ascending order according to salary.
SELECT d.department_name, SUM(e.salary) as"sum of salary"
FROM employees as e, departments as d
WHERE e.department_id=d.department_id
GROUP BY d.department_name
ORDER BY sum(e.salary);


--Q2--Write the query to get the department, total no. employee of each department,
--total(sum) salary with respect to department from "Employee" table.

SELECT d.department_name,COUNT(e.employee_id) as"Total_no_of_employees",SUM(e.salary) as"sum of salary"
FROM employee as e, departments as d
WHERE e.department_id=d.department_id
GROUP BY d.department_name;

--Q3Get department wise maximum salary from "Employee" table order by salary
--ascending

SELECT d.department_name, MAX(e.salary) as "maximum salary" 
FROM employee as e,departments as d
WHERE e.department_id=d.department_id
GROUP BY d.department_name
ORDER BY salary ;

--Q4--Write a query to get the departments where average salary is more than 60k

SELECT d.department_name
FROM employees  e, departments d
WHERE e.department_id=d.department_id and AVG(e.salary)>60000
ORDER BY d.department_name;

--Q5Write down the query to fetch department name assign to more than one
--Employee

SELECT d.department_name
FROM employees as e, departments as d
WHERE e.department_id=d.department_id and COUNT(d.department_name)>1

--6Write a query to show department_name and assignedTo where assignedTo
--will be “One candidate” if its assigned to only one employee otherwise
--“Multiple candidates”

SELECT d.department_name, assignedTo
FROM employess as e, departments as 
WHERE e.employee_id=d.employee_id
CASE
WHEN count(e.employee_id)=1'One candidate'
else 'Multiple candidates'
end as "assignedTo"
GROUP BY d.department_name