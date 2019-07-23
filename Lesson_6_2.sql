SELECT
	u.firstname,
	u.lastname,
	u.email,
	COUNT(*) total_likes
FROM users u 
	JOIN profiles p on u.id = p.user_id
	JOIN media m on u.id = m.user_id
	JOIN likes l ON l.to_subject_id = m.id
GROUP BY 
	u.firstname,
	u.lastname,
	u.email
ORDER BY TIMESTAMPDIFF(DAY, p.birthday, NOW()) 
LIMIT 10