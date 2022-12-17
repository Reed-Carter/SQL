--Selecting Values
SELECT name, part_num FROM parts WHERE name LIKE '%Hair%' ORDER BY part_num DESC;
SELECT * FROM sets WHERE year BETWEEN 1990 AND 2015 AND name LIKE '%Showdown%';
SELECT p.id, p.name FROM part_categories AS p WHERE name LIKE '%Bricks%'; 

--Sub queries
SELECT name FROM sets WHERE theme_id IN (SELECT id FROM themes WHERE name LIKE '%Star Wars%' OR name LIKE '%Pirates%');
SELECT * FROM inventory_parts WHERE inventory_id IN (SELECT id FROM inventories WHERE version > 1);

--Manipulate Values in Select
SELECT s.year, UPPER(CONCAT(s.name, '!!!')) FROM sets AS s WHERE name LIKE '%Batman%';