SELECT category.name AS category, avg(EXTRACT(day FROM rental.return_date - rental.rental_date)) AS rentaldays_ave
FROM rental
JOIN inventory ON inventory.inventory_id=rental.inventory_id
JOIN film ON film.film_id=inventory.film_id
JOIN film_category ON film_category.film_id=film.film_id
JOIN category ON film_category.category_id=category.category_id
GROUP BY category.name
ORDER BY rentaldays_ave  DESC;