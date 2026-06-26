USE sakila;

SELECT * FROM customer WHERE customer_id IN (
	SELECT customer_id 
	FROM payment
	GROUP BY customer_id
	HAVING COUNT(*) > 35
);
