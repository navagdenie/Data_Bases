SELECT 
	p.sex sex,
	COUNT(*) total
FROM likes l 
	JOIN profiles p ON l.from_user_id = p.user_id
GROUP BY 
	sex
ORDER BY total DESC
LIMIT 1