UPDATE
	fanclub_memberships -- comment -- wrong comment
SET
	fanclub_memberships.payment_method_id = 1
WHERE
	fanclub_memberships.id = 238016;


UPDATE fanclub_memberships
SET	fanclub_memberships.payment_method_id = 1
WHERE
	fanclub_memberships.id = 238016
  and fanclub_memberships.id in (1,
		2,
		3 -- invalid comma
	);
