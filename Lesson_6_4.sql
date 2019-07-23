SELECT 
	u.id,
	COUNT(*) total 
FROM users u
	LEFT JOIN messages m1 ON u.id = m1.from_user_id
	LEFT JOIN messages m2 ON u.id = m2.to_user_id
	LEFT JOIN likes l ON u.id = l.from_user_id
GROUP BY u.id
ORDER BY total
LIMIT 10