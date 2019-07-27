DROP TABLE IF EXISTS reference;

CREATE TABLE reference (
name VARCHAR(255),
birthday_at DATE);

INSERT INTO reference VALUES
('name1', '2001-01-01'),
('name2', '2002-02-02'),
('name3', '2003-03-03'),
('name4', '2004-04-04'),
('name5', '2005-05-05'),
('name6', '2006-06-06'),
('name7', '2007-07-07'),
('name8', '2008-08-08'),
('name9', '2009-09-09'),
('name10', '2010-10-10');

INSERT INTO users (name, birthday_at) 
	SELECT r1.name, r1.birthday_at 
	FROM reference r1,
		reference r2,
		reference r3,
		reference r4,
		reference r5,
		reference r6

DROP TABLE IF EXISTS reference;

/*хотела сделать тоже самое но через временную таблицу, 
не поняла почему нельзя объединять временную таблицу с самой собой*/