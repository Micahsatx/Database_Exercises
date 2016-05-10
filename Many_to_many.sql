DROP TABLE if exists roles;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

-- role_id must be counted from above..so 2 = author
INSERT INTO users (name, email, role_id) VALUES
('Micah', 'Micah@fakeemail.com', 2),
('marcus', 'marcus@example.com', 2),
('alex', 'alex@example.com', 2),
('isaac', 'isaac@example.com', Null);

-- join statement
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

-- left join.  this count() and GROUP BY is what gives you the count per
-- role.  3 authors, 0 admins, 0 reviewers, 0 commentators, 1 NULL
SELECT count(role_id),users.name as user_name, roles.name as role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id
GROUP BY user_name, role_name
ORDER BY count(role_id);

-- right join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

-- the main part of this exercise.. many to many
-- find the first and last name of an employee & put it in a column
-- put the department in a column also
-- this is the first portion where it gets the names from the departments
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM departments as d
-- it then joins the many (the departmen employees) with the department managers.
-- this is the pivot table / joiner table
JOIN dept_manager as de
  ON d.dept_no = de.dept_no
-- it then gets the employees for those departments and relates the second many to the 
-- pivot table or joiner table.  
JOIN employees as e
  ON e.emp_no = de.emp_no
-- this is what actualy filters for current department managers instead of printing both
-- past and current managers... in short. if they are still the manager as of this date
-- then they are still the current manager.
-- remove this line and you will get multiple department mangers instead of only the current

WHERE de.to_date = '9999-01-01';