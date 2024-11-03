CREATE TABLE customers (
         customer_id INT, 
         customer_name VARCHAR(100)
     );
     CREATE TABLE orders (
         order_id INT, 
         customer_id INT, 
         order_date DATE
     );
     INSERT INTO customers VALUES 
         (1, 'Rajesh Kumar'), 
         (2, 'Priya Singh');
     INSERT INTO orders VALUES 
         (101, 1, '2024-01-10'), 
         (102, 2, '2024-01-15'), 
         (103, 1, '2024-02-20');

SELECT * FROM CUSTOMERS
SELECT * FROM ORDERS

/*
Get customer details along with their last order date.
*/

SELECT	C.CUSTOMER_ID,
		C.CUSTOMER_NAME,
	   	MAX(O.ORDER_DATE) AS LAST_ORDER_DATE
FROM CUSTOMERS C
JOIN ORDERS O 
ON C.CUSTOMER_ID=O.CUSTOMER_ID
GROUP BY 1,2