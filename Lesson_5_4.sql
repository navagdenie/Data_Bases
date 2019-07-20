START TRANSACTION;

INSERT INTO sample.users (id, name, birthday_at, created_at, updated_at) 
SELECT su.id, su.name, su.birthday_at, su.created_at, su.updated_at FROM shop.users su WHERE su.id=1;

DELETE FROM shop.users WHERE id=1;

COMMIT;
