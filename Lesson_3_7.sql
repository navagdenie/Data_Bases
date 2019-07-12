SELECT 
CASE WEEKDAY(CONCAT('2019', '-', MONTH(birthday_at), '-', DAY(birthday_at))) 
	WHEN 0 THEN 'Monday'
	WHEN 1 THEN 'Tuesday'
	WHEN 2 THEN 'Wednesday'
	WHEN 3 THEN 'Thuerday'
	WHEN 4 THEN 'Friday'
	WHEN 5 THEN 'Saturday'
	WHEN 6 THEN 'Sunday'
END AS weekday,
 count(*) AS total
 FROM users
 GROUP BY weekday
 ORDER BY FIELD(weekday, 'Monday', 'Tuesday', 'Wednesday', 'Thuerday', 'Friday', 'Saturday', 'Sunday');