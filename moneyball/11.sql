SELECT "players"."first_name", "players"."last_name", "salaries"."salary"/"performances"."H" AS "dollars per hit"
FROM "salaries"
JOIN "players" ON "salaries"."player_id" = "players"."id"
JOIN "performances" ON "performances"."player_id" = "players"."id"
WHERE "salaries"."year" = 2001 AND "performances"."year" = 2001 AND "performances"."H">0
ORDER BY "dollars per hit", "players"."first_name", "players"."last_name"
LIMIT 10;
