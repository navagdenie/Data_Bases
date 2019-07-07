DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Имя пользователя'
) COMMENT = 'Пользователи';

DROP TABLE IF EXISTS files;
CREATE TABLE files (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Имя файла',
	description TEXT COMMENT 'Описание файла',
	link TEXT COMMENT 'ПУть к файлу'
) COMMENT = 'Файлы пользователей';

DROP TABLE IF EXISTS key_words;
CREATE TABLE key_words (
	id SERIAL PRIMARY KEY,
	file_id INT UNSIGNED NOT NULL,
	key_word CHAR(30) COMMENT 'Ключевое слово',
	KEY index_key_words(key_word)
) COMMENT = 'Ключевые слова файлов';