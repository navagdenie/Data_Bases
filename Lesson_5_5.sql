CREATE VIEW goods AS 
SELECT p.name product_name, c.name catalog_name
FROM products p
LEFT JOIN catalogs c ON p.catalog_id = c.id;