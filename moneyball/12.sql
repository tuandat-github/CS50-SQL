SELECT "first_name", "last_name"
FROM (
    SELECT "players"."first_name", "players"."last_name"
    FROM "salaries"
    JOIN "players" ON "salaries"."player_id" = "players"."id"
    JOIN "performances" ON "performances"."player_id" = "players"."id"
    WHERE "salaries"."year" = 2001 AND "performances"."year" = 2001 AND "performances"."H">0
    ORDER BY "salaries"."salary"/"performances"."H"
    LIMIT 10)

INTERSECT

SELECT "first_name", "last_name"
FROM (
    SELECT "players"."first_name", "players"."last_name"
    FROM "salaries"
    JOIN "players" ON "salaries"."player_id" = "players"."id"
    JOIN "performances" ON "performances"."player_id" = "players"."id"
    WHERE "salaries"."year" = 2001 AND "performances"."year" = 2001 AND "performances"."RBI">0
    ORDER BY "salaries"."salary"/"performances"."RBI"
    LIMIT 10)
ORDER BY "last_name";
