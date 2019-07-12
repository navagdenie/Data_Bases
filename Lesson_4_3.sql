SELECT 
	tot_likes.sex as sex, 
	tot_likes.total_likes as sum_likes
FROM 
	(SELECT 
		'f' as sex, 
		f_likes.total as total_likes
	FROM 
		(SELECT 
			count(*) as total
		FROM 
			likes
		WHERE 
			from_user_id IN 
			(SELECT 
				user_id
			FROM 
				profiles
			WHERE 
				sex = 'f')) AS f_likes
	UNION
	SELECT 
		'm' as sex, 
		m_likes.total as total_likes
	FROM 
		(SELECT 
			count(*) as total
		FROM 
			likes
		WHERE 
			from_user_id IN 
			(SELECT 
				user_id
			FROM 
				profiles
			WHERE 
				sex = 'm')) AS m_likes) AS tot_likes
ORDER BY sum_likes DESC 
LIMIT 1