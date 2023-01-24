-- This is the SQL script to test sql syntax check. This script is wrong.
-- updated 火 12/27 10:46:20 2022
SELECT
  ID,
  first_name as namae,
  last_name as myoji -- comment
FROM users u
WHERE users.id = 1;

UPDATE
	fanclub_memberships
SET
	fanclub_memberships.payment_method_id = 1
WHERE
	fanclub_memberships.id = 238016
  and fanclub_memberships.id in (1,
  2,
  3
  );
