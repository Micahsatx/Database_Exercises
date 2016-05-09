
SELECT DISTINCT title
FROM titles
ORDER BY title ASC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name, first_name
ORDER BY last_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name NOT LIKE '%qu%'
AND last_name LIKE '%q%'
GROUP BY last_name;
