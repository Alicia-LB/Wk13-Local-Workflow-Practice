USE world;

SELECT c.name, c.surface_area, c.population
FROM countries AS c
WHERE c.surface_area < 501 AND c.population > 100000;

SELECT c.name, c.government_form, c.capital
FROM countries AS c
WHERE c.government_form = 'Constitutional Monarchy'
	AND c.capital > 200
    AND c.life_expectancy > 75;

SELECT c.region, COUNT(c.id) AS num_countries
FROM countries AS c
GROUP BY c.region
ORDER BY num_countries DESC;

SELECT c.name, l.language, l.percentage
FROM countries AS c
JOIN languages AS l
ON c.id = l.country_id
WHERE l.language = 'Slovene' 
ORDER BY l.percentage DESC;

SELECT c.name, COUNT(ci.id) AS num_cities
FROM countries AS c
JOIN cities AS ci
ON c.id = ci.country_id
GROUP BY c.name
ORDER BY num_cities DESC;

SELECT ci.name, ci.population
FROM countries AS c
JOIN cities AS ci
ON c.id = ci.country_id
WHERE c.name = 'Mexico'
	AND ci.population > 500000
ORDER BY ci.population DESC;

SELECT c.name, l.language, l.percentage
FROM countries AS c
JOIN languages AS l
ON c.id = l.country_id
WHERE l.percentage > 89
ORDER BY l.percentage DESC;

SELECT c.name, ci.name, ci.district, ci.population
FROM countries AS c
JOIN cities AS ci
ON c.id = ci.country_id 
WHERE c.name = 'Argentina'
	AND ci.district = 'Buenos Aires'
    AND ci.population > 500000;