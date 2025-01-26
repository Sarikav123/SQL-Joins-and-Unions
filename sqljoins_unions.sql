USE Employees;

select c.* from country c
inner join persons p on p.Country_Id=c.Id;

select * from Persons p
left join country c on c.Id=p.country_id;

select * from Persons p 
right join country c on c.Id=p.country_id; 

select  country_name from country 
UNION 
select  country_name from Persons;

select  country_name from country 
UNION ALL
select  country_name from Persons;


set sql_safe_updates=0;
UPDATE Persons
SET Rating = ROUND(Rating);

 