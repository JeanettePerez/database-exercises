USE employees;

-- SELECT first_name
--     FROM employees
--     WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- SELECT first_name, last_name
--     FROM employees
--     WHERE first_name IN ('Irena', 'Vidya', 'Maya')
--     ORDER BY last_name ASC, first_name DESC;

-- SELECT first_name, last_name
-- FROM employees
-- WHERE first_name IN ('Irena', 'Vidya', 'Maya')
-- ORDER BY last_name DESC, first_name ASC;


-- SELECT first_name, last_name
--     FROM employees
--     WHERE last_name LIKE '%E%';
--     ORDER BY emp_no;

-- SELECT first_name, last_name
--     FROM employees
--     WHERE last_name LIKE 'E%'
--     OR last_name LIKE '%E';
--

-- SELECT first_name, last_name
--     FROM employees
--     WHERE last_name like '%q%';
--
-- SELECT first_name, last_name
-- FROM employees
-- WHERE last_name LIKE '%q%'
--   AND NOT last_name LIKE '%qu%';

-- SELECT CONCAT(first_name, ' ', last_name)
--     AS 'Employees born on Christmas'
--     FROM employees
--     WHERE MONTH(birth_date) = 12
--         AND day(birth_date) = 25;

-- SELECT CONCAT(first_name, ' ', last_name)
--     AS 'Employees'
--     FROM employees
--     WHERE last_name LIKE 'E%E';

-- SELECT *
--     AS 'Hired in the 90s Born on Christmas'
--     FROM employees
--     WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
--         AND MONTH(birth_date) = 12
--         AND day(birth_date) = 25;

-- SELECT *
--     AS 'Hired in the 90s Born on Christmas'
--     FROM employees
--     WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
--     AND MONTH(birth_date) = 12
--     AND day(birth_date) = 25
--     ORDER BY birth_date, hire_date DESC;

SELECT *, datediff(now(), hire_date)
    AS 'Days employed '
    FROM employees
    WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
    AND MONTH(birth_date) = 12
    AND day(birth_date) = 25
    ORDER BY birth_date ASC;
