SELECT country_id,COUNT (*)
    AS city_count FROM city
    GROUP BY country_id
    HAVING COUNT (*) >=20;