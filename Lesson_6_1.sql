SELECT
	u.firstname friend,
	COUNT(*) total
FROM messages m 
	JOIN users u ON IF(m.from_user_id = 1, m.to_user_id, m.from_user_id) = u.id
WHERE m.from_user_id = 1 OR m.to_user_id = 1
GROUP BY friend
ORDER BY total DESC
LIMIT 1