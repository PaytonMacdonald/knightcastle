/* MSSQL BAD : MYSQL GOOD */

/* make the table */
CREATE TABLE knights (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    hasWeapon TINYINT NOT NULL,
    knightId VARCHAR(255) NOT NULL,
    weaponType VARCHAR(255),
    armor TINYINT NOT NULL,

    PRIMARY KEY (id)
);
CREATE TABLE castles (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    hasWeapon TINYINT NOT NULL,
    knightId VARCHAR(255) NOT NULL,
    weaponType VARCHAR(255),
    armor TINYINT NOT NULL,

    PRIMARY KEY (id)
);
/* /////////////////////////////////////////////////////////// */

/* add data */
INSERT INTO knights
(name, age, hasWeapon, knightId, weaponType, armor)
VALUES
("Lances a lot", 32, 1, "why123", 1 );
INSERT INTO knights
(name, age, hasWeapon,)
VALUES
("Green Boy", 127, 1,);
INSERT INTO knights
(name, age, hasWeapon,)
VALUES
("Bordy the Forgetful", 23, 0,);

/* running the GetAll */
SELECT * FROM knights;

/* running the GetById */
SELECT * FROM knights; 

/* code for the edit/put NOTE i do not get how this one works???*/ 
UPDATE artists
SET
  name = "Bordy"
WHERE id = 3; */
SELECT * FROM knights WHERE id = 3;
SELET * FROM knights WHERE id = 3;

/* the delete thingy */
DELETE FROM knights WHERE id = 2;

SELECT * FROM knights
