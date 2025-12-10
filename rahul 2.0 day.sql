USE world;

SHOW TABLES;

SELECT * FROM city;

DESCRIBE city;

SELECT * FROM city 
WHERE district = 'Zuid-Holland';

-- cities with population > 6 lakh (600000)
SELECT * FROM city 
WHERE population > 600000;

SELECT * FROM city 
WHERE countrycode != 'ARG';

SELECT * FROM country 
WHERE continent IN ('Europe', 'North America');

-- correct IN syntax
-- SELECT * FROM country WHERE continent IN ;  ❌ (invalid)

-- correct BETWEEN syntax
SELECT name, continent, indepyear 
FROM country 
WHERE indepyear BETWEEN 1901 AND 1960;

-- fix region spelling + WHERE condition
SELECT code, name 
FROM country 
WHERE region != 'Middle East';

-- population + 10%
SELECT name, indepyear, population, 
       (population * 0.1 + population) AS increased_population
FROM country;

SELECT * FROM country 
WHERE lifeexpectancy BETWEEN 38.3 AND 66.4;

-- NOT IN does NOT work with ranges; use BETWEEN or NOT BETWEEN
-- population NOT BETWEEN 5000 AND 200000
SELECT name, continent, population, gnp 
FROM country 
WHERE population NOT BETWEEN 5000 AND 200000;

-- LIKE operator examples
SELECT name, continent 
FROM country 
WHERE continent = 'Asia';   -- corrected 'Aaia'

-- name contains 'ad'
SELECT name, continent 
FROM country 
WHERE name LIKE '%ad%';

-- underscore (_) means exactly ONE character
SELECT name, continent 
FROM country 
WHERE name LIKE 'Ir__';
