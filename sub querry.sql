use world;
select*from city;
select*from country;
USE SAKILA;
select * from payment;
-- in,any,all
select * from payment
where amount in (select amount from payment where payment_id=2 or payment_id=3);
-- =any (0.99,5.99)
select * from payment
where amount <any (select amount from payment where payment_id=2 or payment_id=3);
-- all (0.99,5.99)(jo bdi sankhya ko lega kavel)
select * from payment
where amount <all (select amount from payment where payment_id=2 or payment_id=3);
select * from payment
where amount >all (select amount from payment where payment_id=2 or payment_id=3);
-- sql zoo qustion 
-- 1.List each country name where the population is larger than that of 'Russia'.
SELECT name
FROM world
WHERE population >
      (SELECT population
       FROM world
       WHERE name = 'Russia');
-- 2.show the countries in Europe with a per capita GDP greater than 'United Kingdom'.

WHERE continent = 'Europe'
  AND gdp / population >
      (
        SELECT gdp / population
        FROM world
        WHERE name = 'United Kingdom'
      );
-- 3. List the name and continent of countries in the continents containing 
-- either Argentina or Australia. Order by name of the country.
SELECT name, continent
FROM world
WHERE continent IN (
    SELECT continent
    FROM world
    WHERE name IN ('Argentina', 'Australia')
)
ORDER BY name;
-- 4 Which country has a population that is more than United Kingdom but less than Germany?
-- Show the name and the population.
select name from world
where population>(select population from world where name='united kingdom');
-- 5.
select name,concat(round (population/(select population from world where name='germany')*100),'%')as
percentage from world where continent='europe';
-- 6. Which countries have a GDP greater than every country in Europe? [Give the name only.]
--  (Some countries may have NULL gdp values)
select name from world where gdp > all (select ifnull(gdp,0)from world where continent='europe');


--  what is for realeted sub querry
-- what are constrion in sql 




