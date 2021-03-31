USE employees;

-- SELECT *
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


-- SELECT *
--     FROM employees
--     WHERE last_name LIKE '%E%';
--     ORDER BY emp_no;

-- SELECT *
--     FROM employees
--     WHERE last_name LIKE 'E%'
--     OR last_name LIKE '%E';

-- SELECT *
--     FROM employees
--     WHERE last_name LIKE 'E%E';

-- SELECT *
--     FROM employees
--     WHERE last_name like '%q%';
--
-- SELECT *
-- FROM employees
-- WHERE last_name LIKE '%q%'
--   AND NOT last_name LIKE '%qu%';