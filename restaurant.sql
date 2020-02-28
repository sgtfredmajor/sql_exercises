
    CREATE TABLE restaurant(
        id SERIAL PRIMARY KEY,
        name text,
        distance int,
        stars int,
        category text,
        favorite_dish text,
        does_takeout Boolean,
        last_time_you_ate_there text
    );

 insert into restaurant(name, distance, stars, category, favorite_dish, does_takeout, last_time_you_ate_there)
    VALUES ('Bonefish Grill', 3, 5, 'Seafood', 'Sea Bass', 'No', '2019-06-01'),
            ('Teds Montana Grill', 2, 4, 'Burgers', 'Bison Burger', 'Yes', '2019-05-12'),
            ('Applebees', 2, 3, 'Traditional', 'Club House Grille', 'No', '2020-01-01'),
            ('Cheescake Factory', 3, 4, 'American', 'Mac and Cheese Burger', 'Yes', '2019-05-01'),
            ('LongHorn Steakhouse', 2, 5, 'Steaks', 'Ribeye', 'Yes', '2019-09-03'),
            ('Coastal Breeze', 3, 4, 'Seafood', 'Fish and Chips', 'Yes', '2019-09-15');

    insert into restaurant(name, distance, stars, category, favorite_dish, does_takeout, last_time_you_ate_there)
    VALUES ('Olive Garden', 3, 5, 'Italian', 'Tour of Italy', 'Yes', '2019-10-01');

    insert into restaurant(name, distance, stars, category, favorite_dish, does_takeout, last_time_you_ate_there)
    VALUES ('Sonnys BBQ', 2, 3, 'BBQ', 'Rib dinner', 'Yes', '2019-29-01');
 
-- Write Queries--

-- The name of the restaurants the gave 5 stars--
SELECT name, stars from restaurant WHERE stars >= 5;

-- The favorite dishes of all 5-star restaurants --
SELECT name, favorite_dish from restaurant WhERE stars >= 5;

--The the id of a restaurant by a specific restaurant name, say 'Moon Tower' --


-- Restaurants in the category of 'BBQ' --
 SELECT name, category from restaurant WHERE category = 'BBQ';  

 -- Restaurants that do take out --
 SELECT name, does_takeout from restaurant WHERE does_takeout = 't';

-- Restaurants that do take out and are in the category of 'BBQ' --
SELECT name, does_takeout, category from restaurant WHERE;

-- Restaurants within 2 miles --
SELECT * from restaurant WHERE distance = 2;

-- Restaurants you haven't eaten at in the last week --
SELECT * from restaurant WHERE last_time_you_ate_there > '2020-22-02';

-- Restaurants you haven't eaten at in the last week and has 5 stars --

-- Aggregation and Sorting Queries --
-- List restaurants by the closest distance. --
SELECT 
    name,
    distance
FROM
    restaurant
WHERE   
    distance =(
        SELECT
        MIN(distance)
        FROM 
            restaurant
    )
    ORDER BY
        name;

-- List the top 2 restaurants by distance.
    
SELECT
   name, 
distance 
FROM
    restaurant
WHERE
    distance =(
        SELECT
        Max(distance)
        FROM
        restaurant
    )
    ORDER BY
     name;