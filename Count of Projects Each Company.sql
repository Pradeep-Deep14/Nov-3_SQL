CREATE TABLE companies (
         company_id INT, 
         company_name VARCHAR(100)
     );
     CREATE TABLE projects (
         project_id INT, 
         project_name VARCHAR(100), 
         company_id INT
     );
     INSERT INTO companies VALUES 
         (1, 'TATA'), 
         (2, 'Wipro'), 
         (3, 'Infosys');
     INSERT INTO projects VALUES 
         (1, 'Project A', 1), 
         (2, 'Project B', 2), 
         (3, 'Project C', 1), 
         (4, 'Project D', 3);

SELECT * FROM COMPANIES

SELECT * FROM PROJECTS

/*
Get the count of projects handled by each company
*/

SELECT C.COMPANY_NAME,
       COUNT(*) AS NO_OF_PROJECTS
FROM COMPANIES C
JOIN PROJECTS P 
ON C.COMPANY_ID=P.COMPANY_ID
GROUP BY 1
