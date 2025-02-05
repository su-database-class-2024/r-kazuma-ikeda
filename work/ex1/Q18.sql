SELECT country.country AS country,count(customer.customer_id),sum(payment.amount) AS sales_sum
FROM rental
JOIN customer ON rental.customer_id=customer.customer_id
JOIN address ON customer.address_id=address.address_id
JOIN city ON address.city_id=city.city_id
JOIN country ON city.country_id=country.country_id
JOIN payment ON rental.rental_id=payment.rental_id
GROUP BY country.country
ORDER BY sales_sum  DESC;