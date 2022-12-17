--Selecting Values
SELECT name, part_num FROM parts WHERE name LIKE '%Hair%' ORDER BY part_num DESC;
SELECT * FROM sets WHERE year BETWEEN 1990 AND 2015 AND name LIKE '%Showdown%';
SELECT p.id, p.name FROM part_categories AS p WHERE name LIKE '%Bricks%'; 

--Sub queries
SELECT name FROM sets WHERE theme_id IN (SELECT id FROM themes WHERE name LIKE '%Star Wars%' OR name LIKE '%Pirates%');
SELECT * FROM inventory_parts WHERE inventory_id IN (SELECT id FROM inventories WHERE version > 1) LIMIT 10;

--Manipulate Values in Select
SELECT s.year, UPPER(CONCAT(s.name, '!!!')) FROM sets AS s WHERE name LIKE '%Batman%';
SELECT quantity * quantity AS quantity_doubled FROM inventory_parts WHERE quantity > 1 ORDER BY quantity LIMIT 20;

--Aggregation Functions
SELECT COUNT(is_trans) FROM colors where is_trans = 1; --28
SELECT part_num FROM parts where part_cat_id IN (SELECT theme_id FROM sets WHERE year > 1999);
SELECT SUM(part_num) FROM parts where part_cat_id IN (SELECT theme_id FROM sets WHERE year > 1999); --3049309347.7599983 parts
SELECT AVG(part_num) FROM parts where part_cat_id IN (SELECT theme_id FROM sets WHERE year > 1999); --163897.30436764302 parts
SELECT theme_id, AVG(num_parts) FROM sets GROUP BY theme_id;