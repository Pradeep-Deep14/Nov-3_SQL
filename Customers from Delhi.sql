CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Anjali', 'Delhi'),
(2, 'Rohan', 'Mumbai'),
(3, 'Suresh', 'Delhi'),
(4, 'Priya', 'Chennai');

/*
WRITE AN SQL QUERY TO COUNT THE NUMBER OF CUSTOMERS FROM DELHI
*/


SELECT * FROM CUSTOMERS


SELECT CUSTOMER_ID,
       CUSTOMER_NAME,
	   COUNT(*) AS NO_OF_CUSTOMERS
FROM CUSTOMERS
WHERE CITY = 'Delhi'
GROUP BY 1,2
