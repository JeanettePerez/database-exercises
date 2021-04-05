use employees;

SELECT CONCAT(first_name, ' ', last_name)
AS 'Employees hired on 10-22-1990'
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    from employees
    where emp_no = 101010
    );

SELECT title
        FROM titles
         where emp_no IN (
            SELECT emp_no
            from employees
            where first_name like 'Aamod%'
        );

SELECT first_name, last_name
    from employees
    where emp_no IN (
        select emp_no
        from titles
        where title = 'Manager'
        AND to_date > NOW()
        ) AND gender = 'F';

SELECT dept_name
    FROM departments
    WHERE dept_no IN (
        select dept_no
        from dept_manager
        where emp_no IN (
            select emp_no
            from employees
            where gender = 'F'
            )
        AND to_date > NOW()
        );
