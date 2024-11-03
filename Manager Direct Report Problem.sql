DROP TABLE IF EXISTS Employees; 
CREATE TABLE Employees (id INT PRIMARY KEY, name VARCHAR(255), department VARCHAR(255), managerId INT);


INSERT INTO Employees (id, name, department, managerId)
	VALUES (101, 'John', 'A', NULL),
	(102, 'Dan', 'A', 101), 
	(103, 'James', 'A', 101), 
	(104, 'Amy', 'A', 101), 
	(105, 'Anne', 'A', 101), 
	(106, 'Ron', 'B', 101), 
	(107, 'Michael', 'C', NULL), 
	(108, 'Sarah', 'C', 107),
	(109, 'Emily', 'C', 107),
	(110, 'Brian', 'C', 107);


SELECT * FROM EMPLOYEES

/*
Find the names of managers who have at least five direct reports.
*/

SELECT E.name AS manager_name
FROM Employees E
JOIN (
    SELECT managerId
    FROM Employees
    GROUP BY managerId
    HAVING COUNT(*) >= 5
) M ON E.id = M.managerId;
