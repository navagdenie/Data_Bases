/* сохранить уникальность имени не получится,
т.к. если в таблице будет две строки - одна с "",
другая c Null, при замене на 'empty' это вызовет ошибку */

UPDATE 
	catalogs
SET 
	name = 'empty'
WHERE 
	name = '' 
	OR name IS NULL;