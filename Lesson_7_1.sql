DROP FUNCTION IF EXISTS hello;

CREATE FUNCTION hello()
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
	SET @hours = DATE_FORMAT(NOW(), "%H");
	IF (@hours>=6 AND @hours<12) THEN 
		RETURN "Good morning!";
	ELSEIF (@hours>= 12 AND @hours<18) THEN 
		RETURN "Good day!";
	ELSEIF (@hours>=18) THEN
		RETURN "Good evening!";
	ELSE
		RETURN "Good night!";
	END IF;
END