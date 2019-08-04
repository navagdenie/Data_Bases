/*при добавлении карты пользователя не допускать добавления просроченных карт*/
DROP TRIGGER IF EXISTS check_valid_date_insert;

CREATE TRIGGER check_valid_date_insert BEFORE INSERT ON cards
FOR EACH ROW
BEGIN
	IF NEW.valid_date <= NOW()THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "INSERT canceled - valid date incorrect";
	END IF;
END

DROP TRIGGER IF EXISTS check_valid_date_update;

CREATE TRIGGER check_valid_date_update BEFORE UPDATE ON cards
FOR EACH ROW
BEGIN
	IF NEW.valid_date <= NOW() THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "UPDATE canceled - valid date incorrect";
	END IF;
END