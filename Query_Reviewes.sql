/* получить все отзывы пользователей об определенном отеле*/
SELECT 
	h.name hotel_name, 	
	rm.name room_name,
	nt.name nutrition,
	b.date_from, 
	b.date_to,
	u.login username, 
	r.created_at review_date,
	r.name review_name,
	r.body review_body,
	r.hotel_mark,
	r.facilities_mark, 
	r.cleanness_mark,
	r.comfort_mark,
	r.price_mark,
	r.location_mark
FROM reviews r
	LEFT JOIN hotels h ON r.hotel_id = h.id
	LEFT JOIN users u ON r.user_id = u.id
	LEFT JOIN bookings b ON r.booking_id = b.id
	LEFT JOIN rooms rm ON b.room_id = rm.id
	LEFT JOIN nutrition_types nt ON b.nutrition_type_id = nt.id
WHERE h.id = %hotel_id%