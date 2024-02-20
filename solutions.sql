--1. SELECT basics
--1.1 show the population of Germany.
SELECT population 
FROM world 
WHERE name = 'Germany';

--1.2 Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
SELECT name, population 
FROM world 
WHERE name IN ('Sweden', 'Norway', 'Denmark');

--1.3 Show the country and the area for countries with an area between 200,000 and 250,000.
--BETWEEN allows range checking (range specified is inclusive of boundary values).
SELECT name, area 
FROM world
WHERE area BETWEEN 200000 AND 250000;

--2. SELECT names uses the LIKE operator to check names 
--2.1 Find the country that start with Y
SELECT name
FROM world
WHERE name LIKE 'Y%';

--2.2 Find the countries that end with y
SELECT name 
FROM world
WHERE name LIKE '%y';

--2.3 Find the countries that contain the letter x
SELECT name 
FROM world
WHERE name LIKE '%x%';

--2.4 Find the countries that end with land
SELECT name 
FROM world
WHERE name LIKE '%land';

--2.5 Find the countries that start with C and end with ia
SELECT name 
FROM world
WHERE name LIKE 'C%ia';

--2.6 Find the country that has oo in the name
SELECT name 
FROM world
WHERE name LIKE '%oo%';
  
--2.7 Find the countries that have three or more a in the name
SELECT name 
FROM world
WHERE name LIKE '%a%a%a%';
  
--2.8
--2.9
--2.10
--2.11
--2.12
--2.13
--2.14
--2.15
