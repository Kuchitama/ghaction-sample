-- This is the SQL script to test sql syntax check. This script is wrong.
-- updated 火 12/27 10:39:36 2022
SELECT
  ID,
  first_name as namae -- no comma
  last_name as myoji --comment -- wrong comment
FROM users u
WHERE users.id = 1;
