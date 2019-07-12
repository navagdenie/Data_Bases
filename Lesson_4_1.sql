SELECT 
	IF(from_user_id = %UserID%, to_user_id, from_user_id) as user_id,
	count(*) AS total FROM messages
WHERE
	(from_user_id IN
		(SELECT friend_id FROM friendship WHERE user_id = %UserID%
		UNION ALL SELECT user_id FROM friendship WHERE friend_id = %UserID%)
	AND to_user_id = %UserID%)
	OR (to_user_id IN 
		(SELECT friend_id FROM friendship WHERE user_id = %UserID%
		UNION ALL SELECT user_id FROM friendship WHERE friend_id = %UserID%) 
	AND from_user_id = %UserID%)
GROUP BY user_id
ORDER BY total DESC
LIMIT 1