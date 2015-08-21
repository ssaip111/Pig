-- Loading data 
movies = LOAD '/user/cloudera/pig/movies_data.csv' USING PigStorage(',') as (id,name,year,rating,duration);

-- View the data
-- DUMP movies;

-- Limit records
movies_limit_10 = LIMIT movies 10;
DUMP movies_limit_10;

--ForEach Generate Example
movie_duration = FOREACH movies GENERATE name, (double)(duration/60);
movie_duration_limit_10 = LIMIT movie_duration 12;
DUMP movie_duration_limit_12;

-- Filter Example
-- movies_greater_than_four = FILTER movies BY (float)rating>4.0;
movies_greater_than_four_and_2012 = FILTER movies BY (float)rating>4.0 AND year > 2012;
movies_greater_than_four_and_2012_limit_14 = LIMIT movies_greater_than_four_and_2012 14; 
