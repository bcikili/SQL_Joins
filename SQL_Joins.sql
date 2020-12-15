#1
select first_name, last_name, customer_id, rental_id
from sakila.customer
join sakila.rental using (customer_id)
#2 Write a query that finds all films with actors that have an actor_id 5

select title, actor_id from sakila.film_actor 
join sakila.film 
using (film_id) where actor_id = 5 

#3 Write a query that lists out all information of every film along with the name of the language for each film, even if a language doesn't exist for that film.
SELECT * FROM sakila.film
left outer JOIN sakila.language
ON sakila.film.language_id = sakila.language.language_id

#4 
select title, first_name, last_name from sakila.film
join sakila.film_actor 
using (film_id)
join sakila.actor using (actor_id) where first_name like 'A%' or first_name like 'E%' or first_name like 'I%' or first_name like 'O%' or first_name like 'U%'

#5
select inventory_id, film_id, store_id from sakila.inventory
join sakila.film
using (film_id) where rental_rate > 4.99
