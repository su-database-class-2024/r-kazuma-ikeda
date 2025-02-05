SELECT category.name AS category,count(rental.rental_date) AS count,sum(payment.amount) AS sales
FROM rental
JOIN inventory ON inventory.inventory_id=rental.inventory_id
JOIN film ON film.film_id=inventory.film_id
JOIN film_category ON film_category.film_id=film.film_id
JOIN category ON film_category.category_id=category.category_id
JOIN payment ON payment.rental_id=rental.rental_id
GROUP BY category.name
ORDER BY sales  DESC;