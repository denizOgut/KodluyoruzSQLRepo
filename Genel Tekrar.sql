--SELECT film.title FROM film WHERE film.title LIKE 'K%' ORDER BY film.length DESC, film.replacement_cost ASC LIMIT 4 ; 

--SELECT rating FROM film GROUP BY rating ORDER BY COUNT(*) DESC LIMIT 1;

SELECT first_name, last_name
FROM customer
WHERE customer_id = ALL
(
SELECT customer_id
FROM payment
GROUP BY  payment.customer_id
ORDER BY COUNT(*) DESC
LIMIT 1
);

SELECT name as "Kategori Adı", count(*) as "Film Sayısı"
FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film ON film.film_id = film_category.film_id
GROUP BY name;

SELECT COUNT(*)
FROM film
WHERE title ILIKE '%e%e%e%e%';