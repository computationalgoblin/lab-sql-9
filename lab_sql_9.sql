-- 1. Create a table rentals_may to store the data from rental table with information for the month of May.

CREATE TABLE rentals_may (
rental_id int UNIQUE NOT NULL,
rental_date date DEFAULT NULL,
inventory_id int DEFAULT NULL,
customer_id int DEFAULT NULL,
return_date date DEFAULT NULL,
staff_id int DEFAULT NULL, 
last_update date DEFAULT NULL,
CONSTRAINT PRIMARY KEY (rental_id)
);

-- 2. Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
select *
from rental
where month(rental_date) = 05; -- I will export the filtered values in a csv and import them in the new rentals_may table

select * from rentals_may;

-- 3. Create a table rentals_june to store the data from rental table with information for the month of June.

CREATE TABLE rentals_june (
rental_id int UNIQUE NOT NULL,
rental_date date DEFAULT NULL,
inventory_id int DEFAULT NULL,
customer_id int DEFAULT NULL,
return_date date DEFAULT NULL,
staff_id int DEFAULT NULL, 
last_update date DEFAULT NULL,
CONSTRAINT PRIMARY KEY (rental_id)
);

-- 4. Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

select *
from rental
where month(rental_date) = 06; -- Again the same, only now we filter the values from june instead of may

select * from rentals_june;

-- 5 Check the number of rentals for each customer for May.
select customer_id, count(rental_id) as counter_of_rentals
from rentals_may
group by customer_id 
order by customer_id;

-- 6 Check the number of rentals for each customer for June.

select customer_id, count(rental_id) as counter_of_rentals
from rentals_june
group by customer_id 
order by customer_id;

