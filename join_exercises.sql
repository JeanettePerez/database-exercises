use employees;

SELECT departments.dept_name as 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
    FROM departments
    JOIN dept_manager on departments.dept_no = dept_manager.dept_no
    JOIN employees on dept_manager.emp_no = employees.emp_no
    Where dept_manager.to_date = '9999-01-01'
    ORDER BY departments.dept_name;


SELECT departments.dept_name AS 'Department Name',
    CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
    FROM departments
    JOIN dept_manager on departments.dept_no = dept_manager.dept_no
    JOIN employees on dept_manager.emp_no = employees.emp_no
    WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F'
    ORDER BY departments.dept_name;

SELECT titles.title AS Title, COUNT(titles.emp_no) AS Total
    FROM titles
    JOIN employees ON titles.emp_no = employees.emp_no
    JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
    JOIN departments ON dept_emp.dept_no = departments.dept_no
    WHERE titles.to_date > NOW() AND dept_emp.to_date > NOW() AND  departments.dept_name LIKE '%Customer%'
    GROUP BY titles.title;

-- SELECT departments.dept_name AS 'Department Name',
--     CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager',
--     COUNT(salaries.salary) AS Salary
--     FROM salaries
--     JOIN departments ON departments.dept_no = dept_manager.dept_no
--     JOIN employees ON dept_manager.emp_no = employees.emp_no
--     JOIN salaries ON salaries.emp_no = employees.emp_no
--     WHERE dept_manager.to_date LIKE '9999%'
--     ORDER BY dept_name;