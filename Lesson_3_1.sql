/* Я разбила замену на 2 запроса,
потому что мне было важно сохранить значение в колонке,
если например не заполнена только одна из двух дат*/

UPDATE users SET created_at = NOW() WHERE created_at IS NULL or created_at = '1900-01-01 00:00';
UPDATE users SET updated_at = NOW() WHERE updated_at IS NULL or updated_at = '1900-01-01 00:00';
