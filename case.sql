-- case statement
use world;

select name,population,
case
when population >=100000 then 'large population'
when population >=50000 then 'middium population'
when population >=8000 then 'small population'
else 'v.small'
end as 'status' from world.country;
-- group by status;

select continent,
sum(case
   when population >=50000 then 1 else 0
end) from world.country
group by continent;


