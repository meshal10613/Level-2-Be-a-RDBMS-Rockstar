--? group by

select country from students group by country;-- ruturn all uniques countries

select country, count(country), round(avg(age), 2) as "Average Age" from students group by country;