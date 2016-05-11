-- write a query that shows each department
-- along with the name of the current manager for that department.
SELECT dept_name as Department_Name, CONCAT (first_name, ' ', last_name) AS 'Full Name'
FROM employees as e
JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
JOIN departments as d 
    ON d.dept_no = dm.dept_no
WHERE dm.emp_no IN(
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01' And emp_no
    );

-- write a query that shows each department
-- along with the name of the current manager for that department.
-- that are females
SELECT dept_name as Department_Name, CONCAT (first_name, ' ', last_name) AS 'Full Name'
FROM employees as e
JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
JOIN departments as d 
    ON d.dept_no = dm.dept_no
WHERE dm.emp_no IN(
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01' And emp_no IN
    (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
    )
);


-- Find the current titles of employees currently working in the Customer Service Department
-- how many in each department
SELECT title as Title, Count(title) as Count
FROM titles AS t
JOIN dept_emp AS de
    ON de.emp_no = t.emp_no
JOIN departments AS d
   ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01' AND t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY title;


-- Find the current salary of all current managers.
-- be explicit with what table info is coming from.
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS Name, s.salary AS Salary
FROM departments as d
-- join deptartment number (dept_no) from the departments table
-- with the department number (dept_no) from the department manager table
JOIN dept_manager as dm
  ON d.dept_no = dm.dept_no
-- join employee number from employees table with
-- employee number from department manager table
JOIN employees as e
  ON e.emp_no = dm.emp_no
-- join employee number from department manager table
-- with the employee number from the salaries table
JOIN salaries as s
  ON dm.emp_no = s.emp_no
-- do this stuff as long as the to_date of the department manager is his current job (> now)
-- AND the to_date from the salary table is his current salary.
WHERE dm.to_date > now() AND s.to_date > now()
-- grouping by the department name only to order the table the same as the exercise showed
-- groups it alphabetically..
-- could do the grouping by salary and it would show smallest to largest
GROUP BY dept_name;