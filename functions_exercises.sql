-- counting how many of each gender with the first name ____
SELECT count(*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY first_name DESC, last_name DESC; 


-- concatinating first and last name for the querry
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY emp_no DESC;


-- show the difference in days of how long and employee has worked there for
-- all employees starting on christmas day 1990
SELECT first_name, last_name, DATEDIFF(NOW(), hire_date)
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC ;


SELECT emp_no, first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25';


-- count the number of unique first and last name combinations.  
-- order them in descending value from largest to smallest number of repeats
-- by there last name
-- in the SELECT statement leaving emp_no, first_name, & last_name
-- shows those values so you can actually see there names
SELECT count(last_name) emp_no, first_name, last_name
FROM employees
WHERE last_name NOT LIKE '%qu%'
AND last_name LIKE '%q%'
GROUP BY first_name, last_name
ORDER BY count(last_name) DESC;
