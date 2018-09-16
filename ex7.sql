DROP TABLE person;
DROP TABLE pet;
DROP TABLE person_pet;

/* ex 2 */
CREATE TABLE person (id INTEGER PRIMARY KEY, first_name TEXT, last_name TEXT, age INTEGER);

CREATE TABLE pet (id INTEGER PRIMARY KEY, name TEXT, breed TEXT, age INTEGER, dead INTEGER);

CREATE TABLE person_pet (person_id INTEGER, pet_id INTEGER);

/* ex 3 */
INSERT INTO person (id, first_name, last_name, age) VALUES (0, "Zed", "Shaw", 37);
INSERT INTO pet (id, name, breed, age, dead) VALUES (0, "Fluffy", "Unicorn", 1000, 0);
INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);
INSERT INTO person (id, first_name, last_name, age) VALUES (1, "Bodhi", "Alarcon", 22);
INSERT INTO pet (id, name, breed, age, dead) VALUES (2, "Oz", "Australian Shepard", 12, 0);

/* ex 4 */

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);
INSERT INTO person_pet (person_id, pet_id) VALUES (1, 2);

/* ex 7 */

/* make sure there’s dead pets */
SELECT name, age FROM pet WHERE dead = 1;

/* aww poor robot */
DELETE FROM pet WHERE dead = 1;
DELETE FROM pet WHERE id = 0;
DELETE FROM pet WHERE id = 2;

/* make sure the robot is gone */
SELECT * FROM pet;

/* let’s resurrect the robot */
INSERT INTO pet VALUES (0, "Fluffy 2.0", "Unicorn", 1001, 0);
INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 0);
INSERT INTO pet VALUES (2, "Oz Jr.", "Doggie", 1, 0);


/* the robot LIVES! */
SELECT * FROM pet;

