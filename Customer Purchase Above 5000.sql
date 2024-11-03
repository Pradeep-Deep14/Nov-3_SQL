CREATE TABLE purchases (
         purchase_id INT PRIMARY KEY, 
         customer_id INT, 
         amount DECIMAL(10, 2)
     );
     INSERT INTO purchases VALUES 
         (1, 1, 4500.00), 
         (2, 2, 7500.00), 
         (3, 3, 2000.00), 
         (4, 1, 10000.00);


SELECT * FROM PURCHASES


/*
List all customers who made purchases above ₹5000.
*/

SELECT CUSTOMER_ID
FROM PURCHASES
WHERE AMOUNT > 5000
ORDER BY 1