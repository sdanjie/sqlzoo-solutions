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

--2. SELECT names: uses the LIKE operator to check names. 
--2.1 Find the country that start with Y.
SELECT name
FROM world
WHERE name LIKE 'Y%';

--2.2 Find the countries that end with y.
SELECT name 
FROM world
WHERE name LIKE '%y';

--2.3 Find the countries that contain the letter x.
SELECT name 
FROM world
WHERE name LIKE '%x%';

--2.4 Find the countries that end with land.
SELECT name 
FROM world
WHERE name LIKE '%land';

--2.5 Find the countries that start with C and end with ia.
SELECT name 
FROM world
WHERE name LIKE 'C%ia';

--2.6 Find the country that has oo in the name.
SELECT name 
FROM world
WHERE name LIKE '%oo%';
  
--2.7 Find the countries that have three or more a in the name.
SELECT name 
FROM world
WHERE name LIKE '%a%a%a%';
  
--2.8 Find the countries that have "t" as the second character.
SELECT name 
FROM world
WHERE name LIKE '_t%'
ORDER BY name;

--2.9 Find the countries that have two "o" characters separated by two others.
SELECT name 
FROM world
WHERE name LIKE '%o__o%';

--2.10 Find the countries that have exactly four characters.
SELECT name 
FROM world
WHERE name LIKE '____';

--2.11 Find the country where the name is the capital city.
SELECT name
FROM world
WHERE name = capital; 
/* OR 
SELECT name FROM world WHERE name LIKE capital;
*/

--2.12 Find the country where the capital is the country plus "City".
--The function concat is short for concatenate. You can use it to combine two or more strings.
--concat(str1, str2,...)
SELECT name
FROM world
WHERE capital = CONCAT(name,' ', 'City');
/* OR 
SELECT name FROM world WHERE capital like CONCAT(name,' City') 
*/ 

--2.13 Find the capital and the name where the capital includes the name of the country.
SELECT capital, name
FROM world
WHERE capital LIKE CONCAT ('%', name, '%');

--2.14 Find the capital and the name where the capital is an extension of name of the country.
SELECT capital, name
FROM world
WHERE capital LIKE CONCAT(name,'%') AND capital NOT LIKE name;

--2.15 Show the name and the extension where the capital is a proper (non-empty) extension of name of the country.
SELECT name, REPLACE(capital, name, '')
FROM world
WHERE capital LIKE CONCAT(name,'%') AND capital NOT LIKE name;


