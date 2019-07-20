DELETE dates 
FROM dates
JOIN (SELECT d.created_at 
	FROM dates d
	LEFT JOIN  (SELECT created_at 
			FROM dates 
			ORDER BY created_at DESC
			LIMIT 5) d2 
	ON d.created_at = d2.created_at
	WHERE d2.created_at IS NULL) AS empty_dates
WHERE dates.created_at = empty_dates.created_at