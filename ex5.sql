SELECT * FROM person;
SELECT name, age FROM pet;
SELECT name, age FROM pet WHERE dead=0;
SELECT * FROM person WHERE first_name != "Zed";

SELECT * FROM pet WHERE age>10;
SELECT first_name, age FROM person WHERE age < 22;
SELECT first_name, age FROM person WHERE age > 22;
SELECT name, age FROM pet WHERE age < 22 AND dead = 1;
SELECT name, age, dead FROM pet WHERE (age < 1000 AND dead = 1) OR (age = 1000);