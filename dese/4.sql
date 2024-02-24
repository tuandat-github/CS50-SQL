SELECT "city", COUNT(*) AS "number public school" FROM "schools"
WHERE "type" ='Public School'
GROUP BY "city"
ORDER BY "number public school" DESC, "city"
LIMIT 10;
