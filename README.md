# sqlzoo-solutions
SQL practices from [SQLZOO Tutorials.](https://sqlzoo.net)
## Sections
1. [SELECT basics](#1-select-basics)
2. [SELECT names](#2-select-names)
3. [SELECT from world](#3-select-from-world)
4. [SELECT from nobel](#4-select-from-nobel)

### 1. [SELECT basics](https://sqlzoo.net/wiki/SELECT_basics) 
1.1 show the population of Germany.
```
SELECT population 
FROM world 
WHERE name = 'Germany';
```
1.2 Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
```
SELECT name, population 
FROM world 
WHERE name IN ('Sweden', 'Norway', 'Denmark');
```
1.3 Show the country and the area for countries with an area between 200,000 and 250,000. 
```BETWEEN allows range checking (range specified is inclusive of boundary values)```
```
SELECT name, area 
FROM world
WHERE area BETWEEN 200000 AND 250000;
```
### 2. [SELECT names](https://sqlzoo.net/wiki/SELECT_names)
Uses the LIKE operator to check names

### 3. SELECT from world
### 4. SELECT from nobel

