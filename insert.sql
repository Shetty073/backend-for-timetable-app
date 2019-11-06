
USE timetable;
UPDATE sy_commerce_C
SET lec1 = "MA", lec2 = "CSP", lec3 ="B.LAW", lec4 = "ECO", lec5 = NULL, lec6 = NULL
WHERE week = 1;

UPDATE sy_commerce_C
SET lec1 = "MA", lec2 = "FA", lec3 ="B.LAW", lec4 = "FA", lec5 = NULL, lec6 = NULL
WHERE week = 2;

UPDATE sy_commerce_C
SET lec1 = "FA", lec2 = "CSP", lec3 ="BLAW", lec4 = NULL, lec5 = NULL, lec6 = NULL
WHERE week = 3;

UPDATE sy_commerce_C
SET lec1 = "CP", lec2 = "CSP", lec3 ="B.LAW", lec4 = "FA", lec5 = NULL, lec6 = NULL
WHERE week = 4;

UPDATE sy_commerce_C
SET lec1 = "CP", lec2 = "FC", lec3 ="ECO", lec4 = "MA", lec5 = NULL, lec6 = NULL
WHERE week = 5;

UPDATE sy_commerce_C
SET lec1 = "ECO", lec2 = "FC", lec3 ="CP", lec4 = "FC", lec5 = NULL, lec6 = NULL
WHERE week = 6;
