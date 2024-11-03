CREATE TABLE tech_companies (
         company_id INT PRIMARY KEY, 
         company_name VARCHAR(100), 
         established_year INT, 
         employees INT
     );
     INSERT INTO tech_companies VALUES 
         (1, 'Flipkart', 2007, 25000), 
         (2, 'Ola', 2010, 1000), 
         (3, 'Zomato', 2008, 2000);

SELECT * FROM TECH_COMPANIES

/*
List all tech companies established between 2000 and 2010 with more than 500 employees
*/

SELECT COMPANY_NAME,
	   EMPLOYEES 
FROM TECH_COMPANIES
WHERE ESTABLISHED_YEAR BETWEEN 2000 AND 2010
AND EMPLOYEES > 500