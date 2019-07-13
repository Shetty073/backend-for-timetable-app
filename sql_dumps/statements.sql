CREATE DATABASE IF NOT EXISTS timetable;
USE timetable;

-- Relation between week and week_day i.e. 1=>Monday, 2=>Tuesday and so on...
CREATE TABLE IF NOT EXISTS weekdays
(
    week     INT(1) PRIMARY KEY NOT NULL,
    week_day VARCHAR(16)        NOT NULL
);
INSERT INTO weekdays(week, week_day)
VALUES (1, "Monday"),
       (2, "Tuesday"),
       (3, "Wednesday"),
       (4, "Thursday"),
       (5, "Friday"),
       (6, "Saturday");


-- IT
CREATE TABLE IF NOT EXISTS fy_it
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);
CREATE TABLE IF NOT EXISTS sy_it
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);
CREATE TABLE IF NOT EXISTS ty_it
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);

-- CS
CREATE TABLE IF NOT EXISTS fy_cs
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);
CREATE TABLE IF NOT EXISTS sy_cs
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);
CREATE TABLE IF NOT EXISTS ty_cs
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);

-- Commerce
CREATE TABLE IF NOT EXISTS fy_commerce_A
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);
CREATE TABLE IF NOT EXISTS fy_commerce_B
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);
CREATE TABLE IF NOT EXISTS fy_commerce_C
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);
CREATE TABLE IF NOT EXISTS sy_commerce_A
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);
CREATE TABLE IF NOT EXISTS sy_commerce_B
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);
CREATE TABLE IF NOT EXISTS sy_commerce_C
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);
CREATE TABLE IF NOT EXISTS ty_commerce_A
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);
CREATE TABLE IF NOT EXISTS ty_commerce_B
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);
CREATE TABLE IF NOT EXISTS ty_commerce_C
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);

-- BMS
CREATE TABLE IF NOT EXISTS fy_bms
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);
CREATE TABLE IF NOT EXISTS sy_bms
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);
CREATE TABLE IF NOT EXISTS ty_bms
(
    week INT(1) NOT NULL PRIMARY KEY,
    lec1 VARCHAR(256),
    lec2 VARCHAR(256),
    lec3 VARCHAR(256),
    lec4 VARCHAR(256),
    lec5 VARCHAR(256),
    lec6 VARCHAR(256)
);


-- INSERTION OF WEEKDAYS
-- IT
INSERT INTO fy_it(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (2, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (3, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (4, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (5, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (6, "lec1", "lec2", "lec3", "lec4", "lec5");
INSERT INTO sy_it(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (2, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (3, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (4, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (5, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (6, "lec1", "lec2", "lec3", "lec4", "lec5");
INSERT INTO ty_it(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (2, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (3, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (4, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (5, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (6, "lec1", "lec2", "lec3", "lec4", "lec5");

-- CS
INSERT INTO fy_cs(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (2, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (3, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (4, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (5, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (6, "lec1", "lec2", "lec3", "lec4", "lec5");
INSERT INTO sy_cs(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (2, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (3, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (4, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (5, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (6, "lec1", "lec2", "lec3", "lec4", "lec5");
INSERT INTO ty_cs(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (2, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (3, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (4, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (5, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (6, "lec1", "lec2", "lec3", "lec4", "lec5");

-- Commerce
INSERT INTO fy_commerce_A(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (2, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (3, "lec1", "lec2", "lec3", "lec4", null),
       (4, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (5, "lec1", "lec2", "lec3", "lec4", null),
       (6, "lec1", "lec2", "lec3", "lec4", "lec5");
INSERT INTO fy_commerce_B(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (2, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (3, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (4, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (5, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (6, "lec1", "lec2", "lec3", "lec4", "lec5");
INSERT INTO fy_commerce_C(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (2, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (3, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (4, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (5, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (6, "lec1", "lec2", "lec3", "lec4", "lec5");
INSERT INTO sy_commerce_A(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (2, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (3, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (4, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (5, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (6, "lec1", "lec2", "lec3", "lec4", "lec5");
INSERT INTO sy_commerce_B(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (2, "lec1", "lec2", "lec3", "lec4", null),
       (3, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (4, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (5, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (6, "lec1", "lec2", "lec3", "lec4", "lec5");
INSERT INTO sy_commerce_C(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", null),
       (2, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (3, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (4, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (5, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (6, "lec1", "lec2", "lec3", "lec4", null);
INSERT INTO ty_commerce_A(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", null),
       (2, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (3, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (4, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (5, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (6, "lec1", "lec2", "lec3", "lec4", null);
INSERT INTO ty_commerce_B(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (2, "lec1", "lec2", "lec3", "lec4", null),
       (3, "lec1", "lec2", "lec3", "lec4", null),
       (4, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (5, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (6, "lec1", "lec2", "lec3", "lec4", "lec5");
INSERT INTO ty_commerce_C(week, lec1, lec2, lec3, lec4, lec5)
VALUES (1, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (2, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (3, "lec1", "lec2", "lec3", "lec4", null),
       (4, "lec1", "lec2", "lec3", "lec4", null),
       (5, "lec1", "lec2", "lec3", "lec4", "lec5"),
       (6, "lec1", "lec2", "lec3", "lec4", "lec5");

-- BMS
INSERT INTO fy_bms(week, lec1, lec2, lec3, lec4)
VALUES (1, "lec1", "lec2", "lec3", "lec4"),
       (2, "lec1", "lec2", "lec3", "lec4"),
       (3, "lec1", "lec2", "lec3", "lec4"),
       (4, "lec1", "lec2", "lec3", "lec4"),
       (5, "lec1", "lec2", "lec3", "lec4"),
       (6, "lec1", "lec2", "lec3", "lec4");
INSERT INTO sy_bms(week, lec1, lec2, lec3, lec4)
VALUES (1, "lec1", "lec2", "lec3", "lec4"),
       (2, "lec1", "lec2", "lec3", "lec4"),
       (3, "lec1", "lec2", "lec3", "lec4"),
       (4, "lec1", "lec2", "lec3", "lec4"),
       (5, "lec1", "lec2", "lec3", "lec4"),
       (6, "lec1", "lec2", "lec3", "lec4");
INSERT INTO ty_bms(week, lec1, lec2, lec3, lec4)
VALUES (1, "lec1", "lec2", "lec3", "lec4"),
       (2, "lec1", "lec2", "lec3", "lec4"),
       (3, "lec1", "lec2", "lec3", "lec4"),
       (4, "lec1", "lec2", "lec3", "lec4"),
       (5, "lec1", "lec2", "lec3", "lec4"),
       (6, "lec1", "lec2", "lec3", "lec4");






