--1. SELECT basics
--1.1 Introducing the world talbe of countries.
SELECT population 
FROM world 
WHERE name = 'Germany';

--1.2 Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
SELECT name, population 
FROM world 
WHERE name IN ('Sweden', 'Norway', 'Denmark');

--1.3 Show the country and the area for countries with an area between 200,000 and 250,000.
-- BETWEEN allows range checking (range specified is inclusive of boundary values)
SELECT name, area 
FROM world
WHERE area BETWEEN 200000 AND 250000;
