CREATE TABLE employees (
        employee_id INT PRIMARY KEY,
        employee_name VARCHAR(100),
        company_id INT,
        salary DECIMAL(10, 2),
        hire_date DATE
    );

    INSERT INTO employees (employee_id, employee_name, company_id, salary, hire_date) VALUES
    (1, 'Alice', 1, 90000, '2020-01-15'),
    (2, 'Bob', 2, 70000, '2021-03-22'),
    (3, 'Charlie', 1, 80000, '2021-06-10'),
    (4, 'David', 3, 95000, '2020-08-05'),
    (5, 'Eva', 4, 65000, '2019-12-12'),
    (6, 'Frank', 5, 60000, '2022-02-02'),
    (7, 'Grace', 2, 72000, '2021-09-01');

SELECT * FROM EMPLOYEES

/*
Write a SQL query to find the number of employees hired each year.
*/


SELECT EXTRACT(YEAR FROM hire_date) AS hire_year,
       COUNT(*) AS num_employees
FROM employees
GROUP BY hire_year
ORDER BY hire_year;


