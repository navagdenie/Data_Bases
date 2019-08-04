/*самые популярные страны изходя из суммы заказов*/
SELECT
	c.name country,
	sum(amount) total
FROM bookings b
	JOIN rooms r ON b.room_id = r.id
	JOIN hotels h ON r.hotel_id = h.id
	JOIN countries c ON h.country_id = c.id
GROUP BY country
ORDER BY total DESC
LIMIT 10