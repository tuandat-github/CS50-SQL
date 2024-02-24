SELECT DISTINCT "teams"."name" FROM "players"
JOIN "performances" ON "players"."id" = "performances"."player_id"
JOIN "teams" ON "teams"."id" = "performances"."team_id"
WHERE "players"."first_name" = 'Satchel' AND "players"."last_name"='Paige';
