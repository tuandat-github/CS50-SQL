SELECT "city", COUNT(*) AS "number public school" FROM "schools"
WHERE "type" ='Public School'
GROUP BY "city"
HAVING "number public school" <=3
ORDER BY "number public school" DESC, "city";
