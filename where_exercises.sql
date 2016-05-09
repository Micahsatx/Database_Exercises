SELECT emp_no, first_name, last_name
FROM employees
WHERE gender = 'M'
AND (
first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya'
)
ORDER BY first_name DESC, last_name DESC; 

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT emp_no, first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC ;

SELECT emp_no, first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name NOT LIKE '%qu%'
AND last_name LIKE '%q%';