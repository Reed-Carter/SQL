--Selecting Values
SELECT name, part_num FROM parts WHERE name LIKE '%Hair%' ORDER BY part_num DESC;
SELECT * from sets WHERE year BETWEEN 1990 and 2015 and name like '%Showdown%';
SELECT p.id, p.name FROM part_categories AS p WHERE name LIKE '%Bricks%'; 