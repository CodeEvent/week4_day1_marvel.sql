DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    darkside BOOLEAN,
    age INT
);

CREATE TABLE lightsabers (
    id SERIAL PRIMARY KEY,
    colour VARCHAR,
    hilt_metal VARCHAR,
    character_id INT REFERENCES characters(id)


);


--------------------------------------------------------------------
--------## THI IS_THE characters TABLE_VALUES ## ------------------
--------------------------------------------------------------------

-- INSERT INTO characters(name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27);
-- INSERT INTO characters(name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
-- INSERT INTO characters(name, darkside, age) VALUES ('Darth Maul', true, 32);
-- INSERT INTO characters(name, darkside) VALUES ('Yoda', false);


-- INSERT INTO characters(name, darkside, age) VALUES ('Stromtropper', true, 25);
-- INSERT INTO characters(name, darkside, age) VALUES ('Stromtropper', true, 25);
-- INSERT INTO characters(name, darkside, age) VALUES ('Stromtropper', true, 25);
-- INSERT INTO characters(name, darkside, age) VALUES ('Stromtropper', true, 25);
-- INSERT INTO characters(name, darkside, age) VALUES ('Stromtropper', true, 25);


-- -- -- -- #selects only the name of the characters
-- SELECT name FROM characters;   

-- -- -- -- -- #selects number of characters
-- SELECT COUNT(*) FROM characters;


-- UPDATE characters SET darkside = true WHERE name = 'Anakin Skywalker';
-- UPDATE characters SET (name, darkside) = ('Darth Vader', false) WHERE NAME = 'Anakin Skywalker';


-- INSERT INTO characters(name, darkside, age) VALUES ('Luke Skywalker', false, 17);
-- UPDATE characters SET age = 65 WHERE NAME= 'Obi-Wan Kenobi';

-- DELETE FROM characters WHERE name = 'Darth Maul';

-- INSERT INTO characters(name) VALUES ('Stefano Diodoro');
-- DELETE FROM characters WHERE name = 'Stefano Diodoro';


-- UPDATE characters SET age = 26 WHERE id = 9;

-- SELECT * FROM characters;



--------------------------------------------------------------------
--------## THI IS_THE lightsabers TABLE_VALUES ## ------------------
--------------------------------------------------------------------



INSERT INTO characters(name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27);
INSERT INTO characters(name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters(name, darkside, age) VALUES ('Darth Maul', true, 32);
INSERT INTO characters(name, darkside) VALUES ('Yoda', false);


INSERT INTO lightsabers(colour, hilt_metal,character_id) VALUES ('Green','Palladium', 4);
INSERT INTO lightsabers(colour, hilt_metal,character_id) VALUES ('Red','Gold', 3);
INSERT INTO lightsabers(colour, hilt_metal,character_id) VALUES ('Red','Silver', 2);

-- make all IDs equal to eachother, never do this
-- UPDATE lightsabers SET id = 1;  




SELECT * FROM lightsabers WHERE character_id = 3;
SELECT * FROM characters;