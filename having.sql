-- group by
use world;

select region, count(name), count(continent) from country group by region;

select region , avg(population) from country group by region;

select*from city;
select district , count(name) as totalcity from city group by District;
-- use city ka name jiski population 100000 se uper ho
-- where (sabse pehle execute )=> group by => count()
select district , count(name) from city where population>100000 group by District;

select*from city;

select continent, count(name) from country where continent='asia' and indepyear>1950;

-- get total country which got ind
select continent, count(name) from country where indepyear>1950 group by continent;

-- having to filter data based on aggregate coulam like sum , count,max
select continent, sum(population) from country group by continent
having sum (populatio)>30401150;
-- where only use hi exist kreta hai jo table houta hai .
-- where and  habing me defireance;
-- where clause is use to filter the data from table
-- habing use to filter the data on aggerygate coulam

-- Q countinent name,total pop
select continent, sum(population) from country where LifeExpectancy>35.0 group by continent;

-- q unique to find out the total countrys each goverment from where total no. of country should be >30
-- 
-- having there capital >30 and total population >3 lakh;
select govermentfrom,count(name),sum(population) from country where capital>30 group by govermentform
having sum(Population)>300000;
select continent,region, count(name) from country group by continent,region; 