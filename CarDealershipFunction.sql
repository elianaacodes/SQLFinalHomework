CREATE FUNCTION add_part (part_id INTEGER, price DECIMAL)
RETURNS void 
AS $MAIN$
BEGIN 
	INSERT INTO part(part_id, price)
	VALUES (part_id, price);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_part(3, 50.00);
SELECT add_part(4, 25.60);

SELECT * FROM part;


