/* Я разбила замену на 2 запроса,
потому что мне было важно сохранить значение в колонке,
если например не заполнена только одна из двух дат*/

UPDATE users SET
	created_at = IF(created_at IS NULL OR created_at = '0001-01-01 00:00:01', NOW(), created_at),
	updated_at = IF(updated_at IS NULL OR updated_at = '0001-01-01 00:00:01', NOW(), updated_at)