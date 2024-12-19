SELECT * FROM weather JOIN cities ON city = name;
SELECT city, temp_lo, temp_hi, prcp, date, location
    FROM weather JOIN cities ON city = name;
    SELECT weather.city, weather.temp_lo, weather.temp_hi,
       weather.prcp, weather.date, cities.location
    FROM weather JOIN cities ON weather.city = cities.name;
    SELECT *
    FROM weather, cities
    WHERE city = name;
    SELECT *
    FROM weather LEFT OUTER JOIN cities ON weather.city = cities.name;
    SELECT w1.city, w1.temp_lo AS low, w1.temp_hi AS high,
       w2.city, w2.temp_lo AS low, w2.temp_hi AS high
    FROM weather w1 JOIN weather w2
        ON w1.temp_lo < w2.temp_lo AND w1.temp_hi > w2.temp_hi;
        SELECT *
    FROM weather w JOIN cities c ON w.city = c.name;