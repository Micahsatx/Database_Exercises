
-- using the alias full_name and also DOB.  concatinating them so its easier to read
SELECT 
CONCAT(emp_no, ' - ', last_name, ' ', first_name) AS full_name,
birth_date as DOB
FROM employees
LIMIT 10;
