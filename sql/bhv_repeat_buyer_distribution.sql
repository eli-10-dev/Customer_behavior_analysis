CREATE TABLE bhv_repeat_buyer_distribution AS 
SELECT
	'1' AS "Months Active",
	COUNT(*) AS "Customer Count",
	1 AS "Sort Order"
FROM bhv_buyer_activity
WHERE "Months Active" = 1
UNION ALL
SELECT 
	'2-4' AS "Months Active",
	COUNT(*) AS "Customer Count",
	2 AS "Sort Order"
FROM bhv_buyer_activity
WHERE "Months Active" > 1 AND "Months Active" <= 4
UNION ALL
SELECT 
	'5-7' AS "Months Active",
	COUNT(*) AS "Customer Count",
	3 AS "Sort Order"
FROM bhv_buyer_activity
WHERE "Months Active" > 4 AND "Months Active" <= 7
UNION ALL
SELECT 
	'8-10' AS "Months Active",
	COUNT(*) AS "Customer Count",
	4 AS "Sort Order"
FROM bhv_buyer_activity
WHERE "Months Active" > 7 AND "Months Active" <= 10
UNION ALL
SELECT 
	'11-13' AS "Months Active",
	COUNT(*) AS "Customer Count",
	5 AS "Sort Order"
FROM bhv_buyer_activity
WHERE "Months Active" > 10 AND "Months Active" <= 13
;
