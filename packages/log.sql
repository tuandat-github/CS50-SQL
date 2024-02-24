
-- *** The Lost Letter ***
-- SELECT "address_id" FROM "scans" WHERE "package_id"=(
--     SELECT "id" FROM "packages" WHERE "from_address_id"=(
--         SELECT "id" FROM "addresses" WHERE "address"='900 Somerville Avenue') AND "contents" LIKE "%congratulatory%") AND "action"= 'Drop';

-- SELECT "type", "address" FROM "addresses" WHERE "id"='854';
-- *** The Devious Delivery ***
-- SELECT * FROM "packages"
-- WHERE "from_address_id" IS NULL;

-- SELECT "type" FROM "addresses"
-- WHERE "id" = (
--     SELECT "address_id" FROM "scans"
--     WHERE "package_id"=(
--         SELECT "id" FROM "packages"
--         WHERE "from_address_id" IS NULL) AND "action"="Drop")

-- *** The Forgotten Gift ***

SELECT "driver_id" FROM "scans"
WHERE "package_id" =(
    SELECT "id" FROM "packages"
    WHERE "from_address_id" =(
        SELECT "id" FROM "addresses"
        WHERE "address"='109 Tileston Street')
        AND "to_address_id" =(
            SELECT "id" FROM "addresses"
            WHERE "address"='728 Maple Place'))
ORDER BY "timestamp" DESC
LIMIT 1;

SELECT "name" FROM "drivers"
WHERE "id"=17;
