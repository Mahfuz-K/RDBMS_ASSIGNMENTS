-- Questions:
-- 1) Find all the departments where the minimum salary is less than 2000.

SELECT  department_name
FROM departments
WHERE department_id IN (SELECT DISTINCT department_id
FROM employees 
WHERE salar<2000

 );

-- 2) Find all the countries where no employees exist.

SELECT DISTINCT country_name 
FROM countries 
WHERE country_id NOT IN (SELECT location_id FROM locations WHERE location_id IN
(SELECT location_id
FROM departments 
WHERE department_id IN (
    SELECT department_id
    From employee

)

));

-- 3) From the following tables write a query to find all the jobs, having at least 2 employees in a
-- single department.(don’t use joins)

SELECT job_title 
FROM jobs 
WHERE job_id IN (SELECT )

-- 4)From the following tables write a query to find all the countries, having cities with all the city
-- names starting with 'a'.(don’t use joins)

SELECT country_name
FROM countries 
WHERE country_id IN (SELECT country_id
FROM locations
WHERE city LIKE "a%"
);



-- 5)From the following tables write a query to find all the departments, having no cities.

SELECT department_name 
FROM departments 
WHERE department_id IN (
    SELECT location_id
    FROM locations 
    WHERE departments.location_id=locations.location_id AND COUNT(city)=0
)