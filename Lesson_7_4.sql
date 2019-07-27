DROP TABLE IF EXISTS logs;

CREATE TABLE logs (
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время и дата записи',
	table_name VARCHAR(8) COMMENT 'Имя таблицы',
	primary_id BIGINT COMMENT 'Первичный ключ таблицы',
	name VARCHAR(255) COMMENT 'Значения поля name'
) COMMENT = 'Лог добавления записей в таблицы' ENGINE=Archive;

DROP TRIGGER IF EXISTS users_insert_logs;

CREATE TRIGGER users_insert_logs AFTER INSERT on users
FOR EACH ROW 
BEGIN
	INSERT INTO logs (table_name, primary_id, name) VALUES ('users', NEW.id, NEW.name);
END

DROP TRIGGER IF EXISTS catalogs_insert_logs;

CREATE TRIGGER catalogs_insert_logs AFTER INSERT on catalogs
FOR EACH ROW 
BEGIN
	INSERT INTO logs (table_name, primary_id, name) VALUES ('catalogs', NEW.id, NEW.name);
END

DROP TRIGGER IF EXISTS products_insert_logs;

CREATE TRIGGER products_insert_logs AFTER INSERT on products
FOR EACH ROW 
BEGIN
	INSERT INTO logs (table_name, primary_id, name) VALUES ('products', NEW.id, NEW.name);
END