SELECT DISTINCT title
    FROM titles
    group by title;

SELECT DISTINCT last_name
    FROM employees
    WHERE last_name LIKE 'E%E'
    GROUP BY last_name;

SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name, first_name;

SELECT DISTINCT last_name
FROM employees
WHERE last_name like '%q%'
    AND NOT last_name LIKE '%qu%'
GROUP BY last_name;

SELECT COUNT(last_name), last_name
    FROM employees
    WHERE last_name like ''%q%''
    AND NOT last_name LIKE ''%qu%''
    GROUP BY last_name
    ORDER BY COUNT(last_name);

SELECT COUNT(*), gender
    FROM employees
    WHERE first_name IN ('Irena', 'Vidya', 'Maya')
    GROUP BY gender
    ORDER BY COUNT(*);
