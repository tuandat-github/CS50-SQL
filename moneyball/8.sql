SELECT "salaries"."salary" FROM "salaries"
JOIN "performances" ON "salaries"."player_id" = "performances"."player_id" AND "salaries"."team_id" = "performances"."team_id"
WHERE "performances"."year" = 2001 AND "salaries"."year" = 2001
ORDER BY "performances"."HR" DESC
LIMIT 1;
