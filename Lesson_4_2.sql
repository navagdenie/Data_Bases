/*В нашей БД vk тип поля to_subject_id не определен как внешний ключ какой либо таблицы.
Поэтому для выполнения данного задания, я предположила, что поле  to_subject_id
является ссылкой на запись в таблице media*/

SELECT 
	COUNT(*) as total_likes
FROM 
	likes
WHERE 
	to_subject_id IN (
	SELECT
		id 
	FROM 
		media
	WHERE user_id IN (
		SELECT
			youngest.user_id 
		FROM
			(SELECT
				user_id,
				TIMESTAMPDIFF(DAY, birthday, NOW()) AS age_days
			FROM 
				profiles
			ORDER BY age_days
			LIMIT 10) as youngest))