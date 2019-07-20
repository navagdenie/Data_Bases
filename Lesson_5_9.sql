CREATE VIEW usernames AS SELECT id, name FROM accounts;

GRANT SELECT ON shop.usernames TO shop_read;