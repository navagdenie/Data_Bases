/*Для определеня наименьшей активности я брала наименьшее количество лайков + сообщений от пользователя + сообщений от пользователя */
SELECT 
	users_activity.user_id AS user_id, 
	SUM(users_activity.activity) total
FROM 
	(SELECT 
		from_user_id user_id,
		count(*) activity
	FROM 
		likes
	GROUP BY
		user_id

	UNION ALL
	
	SELECT
		from_user_id user_id,
		count(*) activity
	FROM
		messages
	GROUP BY 
		user_id
	
	UNION ALL
	
	SELECT
		to_user_id user_id,
		count(*) activity
	FROM
		messages
	GROUP BY 
		user_id) users_activity

GROUP BY 
	user_id
ORDER BY 
	total
LIMIT 10