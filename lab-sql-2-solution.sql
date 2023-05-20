-- Select all the actors with the first name "Scarlett':
select concat(first_name, ' ', last_name) as Actor from sakila.actor
where first_name = 'Scarlett';

-- Select all the actors with the last name 'Johansson':
select concat(first_name, ' ', last_name) as Actor from sakila.actor
where last_name = 'Johansson';

-- How many films are available for rent? 
select count(film_id) from sakila.film;

-- How many films have been rented? 
select count(inventory_id) from rental;

-- What is the shortest and longest rental period? 
	-- The shortest rental period: 
select min(rental_duration) from sakila.film;

	-- The longest rental period: 
select max(rental_duration) from sakila.film;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration. 
select min(length) as min_duration, max(length) as max_duration
from sakila.film;

-- What's the average movie duration? 
select round(avg(length),0) as avg_duration
from sakila.film;

-- What's the average movie duration expressed in format (hours, minutes)?
select concat(floor(avg(length)/60), 'h ', round(((avg(length))%60),0), 'min') as avg_duration_formatted
from sakila.film;

-- How many movies are longer than 3 hours? 
select count(film_id) as movies_longer_3h
from sakila.film
where length > 180;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org
select concat(upper(left(first_name,1)), lower(substring(first_name,2)), ' ', last_name, ' - ', lower(email)) as Customer_info
from customer;

-- What's the lenght of the longest film title? 
select max(length(title)) as longest_title
from film;