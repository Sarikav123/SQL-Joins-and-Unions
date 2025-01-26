# SQL-Joins-and-Unions
SQL project demonstrating joins, unions, distinct operations, and data transformation

This project demonstrates the use of SQL queries to perform data integration and transformation on two sample tables: Country and Persons. The main focus is on understanding and implementing various types of joins, unions, and data transformation techniques in SQL.

1. Perform inner join, Left join, and Right join on the tables.

INNER JOINS:

  select c.* from country c
  
  inner join persons p on p.Country_Id=c.Id;
  
  select P.* from country c
  
  inner join persons p on p.Country_Id=c.Id;
  
LEFT JOIN:

  fetch all records from Persons table and matching records from country and null for not matching.
  
  select * from Persons p
  
  left join country c on c.Id=p.country_id;
  
RIGHt JOIN:

  fetch all records from Country table and matching records from Persons and null for not matching.
  
  select * from Persons p 
  
  right join country c on c.Id=p.country_id; 
  
 2. List all distinct country names from both the Country and Persons tables.

    select distinct country_name from country
    
    UNION
    
    select distinct country_name from Persons;

4. List all country names from both the Country and Persons tables, including duplicates.

    select  country_name from country
   
    UNION ALL
   
    select  country_name from Persons;
   
5. Round the ratings of all persons to the nearest integer in the Persons table.

   set sql_safe_updates=0;
   
   UPDATE Persons SET Rating = ROUND(Rating);

   
 
