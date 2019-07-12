--преобразуем к дате
UPDATE users SET 
	created_at = STR_TO_DATE(created_at, '%d.%m.%Y %T'),
	updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %T');

-- меняем типы колонок
ALTER TABLE users CHANGE created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE users CHANGE updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;