-- As a food lover,
-- So I can stay organised and decide what to cook,
-- I'd like to keep a list of all my recipes with their names.

-- As a food lover,
-- So I can stay organised and decide what to cook,
-- I'd like to keep the average cooking time (in minutes) for each recipe.

-- As a food lover,
-- So I can stay organised and decide what to cook,
-- I'd like to give a rating to each of the recipes (from 1 to 5).

-- nouns: recipes, names, average_cooking_time, rating

TRUNCATE TABLE recipes RESTART IDENTITY; -- replace with your own table name.
-- CREATE TABLE recipes (
--   id SERIAL PRIMARY KEY,
--   name_of_meal text,
--   average_cooking_time int,
--   rating int
-- );


-- Below this line there should only be `INSERT` statements.

INSERT INTO recipes (name_of_meal, average_cooking_time, rating) VALUES ('Boiled Egg', 6, 3);
INSERT INTO recipes (name_of_meal, average_cooking_time, rating) VALUES ('Cheese Sandwich', 3, 1);