-- funcation (date,string,number)
-- aggregate funcation (to perform the calculatenon set of row ) (multi line funcation)
-- count
use world;

select * from country;
select count(indepyear) from country;
select count(*),count(indepyear) from country;

-- unique value ke liye distinct 
select distinct continent, region from country;

select distinct continent, region from country;

select count(population) , sum(population), avg(population) from country;

select count(distinct governmentform) from country;
select governmentform from country;

select count(governmentform), count(distinct governmentform),sum(governmentfrom) from country where continent='asia';

select count(name),sum(population);


 

-- get the total country avg surface area and the total population for the country which has gpot the indep year from 1947 1998
select count(name) ,avg(surfacearea),sum(populatio) from country
where indepyear >1947 and indepyear <1948;

-- get the total number of country and the no. of unique continent along with the 
-- avg population and total number of capitals fro the countries stating with a or 
select count(name), count(distinct continent),avg(population),sum(capital) from country where name like 'A%' or name like 'D%'; 

select * from country;
select count(name) from country where continent='asia';
select count(name) from country where continent='africa';
select count(name) from country where continent='europe';

select continent, count(*) from country group by continent;
select indepyear, count(*) from  country group by indepyear;
select governmentform, count(*) from country group by governmentform;
-- jab group by krenge to ham ek coulam hi select kre skte or ko coulam nhi '

select continent, count(name), sum(population), avg(population),
max(population),min(population),max(indepyear), min(indepeyear) from country group by continent;

-- from the city table you have to find the total cityies,total district,unique district, total population from the city table
select*from city;
show tables;
select * from city;
select countrycode , count(*), count(distinct district), sum(population) from city group by countrycode;