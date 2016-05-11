
SELECT first_name, last_name, emp_no, hire_date
FROM employees
WHERE emp_no = '101010';

SELECT first_name, last_name, emp_no, hire_date 
FROM employees
WHERE hire_date  IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
);

SELECT emp_no
FROM employees
WHERE first_name = 'Aamod';

SELECT employees.first_name as employees_first_name, titles.emp_no as titles_emp_no
FROM employees
JOIN titles ON titles.emp_no = employees.emp_no;


SELECT titles.emp_no, title, employees.first_name, employees.last_name
FROM titles
JOIN employees ON titles.emp_no = employees.emp_no
WHERE employees.emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

SELECT first_name, last_name, emp_no, gender
FROM employees
WHERE gender = 'F';

SELECT employees.first_name as employees_first_name, dept_manager.emp_no as dept_manager_emp_no
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no;

SELECT dept_manager.emp_no, employees.first_name
FROM dept_manager
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE employees.emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'
);
