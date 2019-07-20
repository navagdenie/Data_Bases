/*Я заменила названия колонок
from и to на city_from и city_to,
мне так удобнее*/
SELECT c1.name, c2.name
FROM flights f
LEFT JOIN cities c1 ON f.city_from = c1.label
LEFT JOIN cities c2 ON f.city_to = c2.label