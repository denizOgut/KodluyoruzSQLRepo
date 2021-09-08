SELECT COUNT(film.length) FROM film WHERE film.length > 
(SELECT AVG(film.length) FROM film);

SELECT COUNT(film.rental_rate) FROM film WHERE film.rental_rate =
(SELECT MAX(film.rental_rate) FROM film);

SELECT * FROM film 
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) 
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film) ;

SELECT customer.first_name , customer.last_name , SUM(payment.amount) AS Max_Shopping FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY payment.customer_id , customer.first_name ,customer.last_name
ORDER BY SUM(amount) DESC

