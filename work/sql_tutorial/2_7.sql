SELECT max(temp_lo) FROM weather;
SELECT city FROM weather
    WHERE temp_lo = (SELECT max(temp_lo) FROM weather);
    SELECT city, max(temp_lo)
    FROM weather
    GROUP BY city;
    SELECT city, max(temp_lo)
    FROM weather
    GROUP BY city
    HAVING max(temp_lo) < 40;
    SELECT city, max(temp_lo)
    FROM weather
    WHERE city LIKE 'S%'            -- (1)
    GROUP BY city
    HAVING max(temp_lo) < 40;