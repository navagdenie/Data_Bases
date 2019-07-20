CREATE TEMPORARY TABLE month_days (
id INT);

INSERT INTO month_days (id) VALUES 
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12), (13), (14), (15),
(16), (17), (18), (19), (20), (21), (22), (23), (24), (25), (26), (27), (28), (29), (30), (31);

SELECT 
	md.id,
	IF(d.created_at IS NULL, 0, 1) value
FROM month_days md
LEFT JOIN dates d 
	ON md.id = DAYOFMONTH(d.created_at)
ORDER BY md.id