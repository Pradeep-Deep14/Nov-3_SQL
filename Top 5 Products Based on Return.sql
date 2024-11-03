CREATE TABLE products (
         product_id INT, 
         product_name VARCHAR(100)
     );
     CREATE TABLE returns (
         return_id INT, 
         product_id INT, 
         return_reason VARCHAR(100)
     );
     INSERT INTO products VALUES 
         (1, 'Laptop'), 
         (2, 'Smartphone'), 
         (3, 'Tablet'), 
         (4, 'Headphones'), 
         (5, 'Smartwatch');
     INSERT INTO returns VALUES 
         (1, 1, 'Defective'), 
         (2, 1, 'Wrong item sent'), 
         (3, 2, 'Defective'), 
         (4, 3, 'Not as described'), 
         (5, 2, 'Defective'), 
         (6, 2, 'Customer changed mind'), 
         (7, 4, 'Defective'), 
         (8, 5, 'Not working'), 
         (9, 1, 'Defective');


/*
Identify the top 5 products that have been returned the most and the reason for their return.
*/

SELECT * FROM PRODUCTS
SELECT * FROM RETURNS

SELECT P.PRODUCT_ID,
       P.PRODUCT_NAME,
       R.RETURN_REASON,
	   COUNT(*) as COUNT_OF_RETURN_PRODUCTS
FROM PRODUCTS P
JOIN RETURNS R
ON P.PRODUCT_ID = R.PRODUCT_ID
GROUP BY 1,2,3
ORDER BY COUNT(*) DESC
LIMIT 5

