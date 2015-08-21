-- Cogroup Example
owners = LOAD '/user/cloudera/pig/owners.csv' USING PigStorage(',') AS (owner:chararray,animal:chararray);
pets = LOAD '/user/cloudera/pig/pets.csv' USING PigStorage(',') AS (name:chararray,animal:chararray);
grouped = COGROUP owners BY animal, pets by animal;
DUMP grouped;

-- Describe Example
--Describe grouped;

-- Explain Example
--explain grouped;

-- Illustrate Example
--illustrate grouped;
