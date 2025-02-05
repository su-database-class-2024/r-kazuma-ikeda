SELECT title FROM film
    WHERE replacement_cost = (SELECT max(replacement_cost) FROM film);