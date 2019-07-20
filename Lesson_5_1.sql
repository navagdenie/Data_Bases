SELECT u.*
FROM users u
JOIN orders o 
ON u.id = o.user_id
GROUP BY u.id