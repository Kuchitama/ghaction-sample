UPDATE
	user_table --comment -- wrong comment
SET
	user_table.payment_method_id = 1
WHERE
	user_table.id = 2;


UPDATE user_table
SET	user_table.payment_method_id = 1
WHERE
	user_table.id = 3
  and user_table.id in (1,
		2,
		3, -- invalid comma
	);
