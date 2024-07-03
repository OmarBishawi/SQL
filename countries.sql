select countries.name,languages.language,languages.percentage
from countries
join languages on countries.code = languages.country_code
where
languages.language='slovene'
order by 
languages.percentage desc;

select countries.name,count(cities.id) as num_cities
from countries
left join cities on countries.code = cities.country_code
group by countries.name
ORDER BY num_cities desc;

select name, population
from cities
where 
country_code = 'mex'
and population > 500000
order by population desc;

select countries.name, languages.language,languages.percentage
from countries
join languages on countries.code=languages.country_code
where languages.percentage > 89
order by languages.percentage desc;
	
select name, surface_area, population
from countries
where surface_area <501 and population >100000;	

SELECT *
FROM countries
WHERE government_form = 'Constitutional Monarchy'
AND capital > 200
AND life_expectancy > 75;


select countries.name, cities.name, cities.district, cities.population
from countries 
join cities on countries.code = cities.country_code
where cities.country_code = 'arg'
and cities.district = 'Buenos Aires'
and cities.population >500000;

select continent as region, count(*) as num_countries
from countries
group by continent
order by num_countries desc;
