CREATE TABLE sales (order_id INT PRIMARY KEY, order_date DATE, product_id INT, quantity INT, price_per_unit DECIMAL(10, 2)); 
INSERT INTO sales (order_id, order_date, product_id, quantity, price_per_unit) 
	VALUES (1, '2022-03-10', 101, 2, 15.00),
	(2, '2022-04-05', 102, 1, 25.50),
	(3, '2023-01-15', 103, 3, 10.75), 
	(4, '2023-02-20', 104, 2, 30.20),
	(5, '2022-05-12', 105, 4, 12.80), 
	(6, '2023-06-18', 106, 2, 22.40),
	(7, '2023-07-22', 107, 1, 45.30),
	(8, '2021-08-30', 108, 3, 20.60);


SELECT * FROM SALES

/*
Find total sales revenue for each month in 2023.
*/

SELECT EXTRACT(MONTH FROM ORDER_DATE) AS MONTH,
       SUM(QUANTITY*PRICE_PER_UNIT) AS TOTAL_SALES
FROM SALES
WHERE EXTRACT(YEAR FROM ORDER_DATE)=2023
GROUP BY 1
ORDER BY 1