SELECT 
	city.city_id as city_id,
    city.city as city,
    customer.first_name AS customer_first_name,
    customer.last_name AS customer_last_name,
    customer.email AS customer_email,
    CONCAT(address.address, ', ', COALESCE(address.address2, '')) AS full_address
FROM 
    customer
JOIN 
    address ON customer.address_id = address.address_id
JOIN 
    city ON address.city_id = city.city_id
WHERE 
    city.city_id = 312;
    
SELECT 
    film.title,
    film.description,
    film.release_year,
    film.rating,
    film.special_features,
    category.name AS genre
FROM 
    film
JOIN 
    film_category ON film.film_id = film_category.film_id
JOIN 
    category ON film_category.category_id = category.category_id
WHERE 
    category.name = 'Comedy';
    
    SELECT 
    actor.actor_id,
    CONCAT(actor.first_name, ' ', actor.last_name) AS actor_name,
    film.title,
    film.description,
    film.release_year
FROM 
    actor
JOIN 
    film_actor ON actor.actor_id = film_actor.actor_id
JOIN 
    film ON film_actor.film_id = film.film_id
WHERE 
    actor.actor_id = 5;
    
   SELECT 
    customer.first_name,
    customer.last_name,
    customer.email,
    address.address
FROM 
    customer
JOIN 
    address ON customer.address_id = address.address_id
JOIN 
    city ON address.city_id = city.city_id
WHERE 
    customer.store_id = 1
    AND city.city_id IN (1, 42, 312, 459);

SELECT 
    film.title,
    film.description,
    film.release_year,
    film.rating,
    film.special_features
FROM 
    film
JOIN 
    film_actor ON film.film_id = film_actor.film_id
WHERE 
    film_actor.actor_id = 15
    AND film.rating = 'G'
    AND film.special_features LIKE '%Behind the Scenes%';
    
    SELECT 
    film.film_id,
    film.title,
    actor.actor_id,
    CONCAT(actor.first_name, ' ', actor.last_name) AS actor_name
FROM 
    film
JOIN 
    film_actor ON film.film_id = film_actor.film_id
JOIN 
    actor ON film_actor.actor_id = actor.actor_id
WHERE 
    film.film_id = 369;

SELECT 
    film.title,
    film.description,
    film.release_year,
    film.rating,
    film.special_features,
    category.name AS genre
FROM 
    film
JOIN 
    film_category ON film.film_id = film_category.film_id
JOIN 
    category ON film_category.category_id = category.category_id
WHERE 
    category.name = 'Drama'
    AND film.rental_rate = 2.99;	
	

SELECT 
    film.title,
    film.description,
    film.release_year,
    film.rating,
    film.special_features,
    category.name AS genre,
    actor.first_name,
    actor.last_name
FROM 
    film
JOIN 
    film_actor ON film.film_id = film_actor.film_id
JOIN 
    actor ON film_actor.actor_id = actor.actor_id
JOIN 
    film_category ON film.film_id = film_category.film_id
JOIN 
    category ON film_category.category_id = category.category_id
WHERE 
    category.name = 'Action'
    AND actor.first_name = 'Sandra'
    AND actor.last_name = 'Kilmer';
