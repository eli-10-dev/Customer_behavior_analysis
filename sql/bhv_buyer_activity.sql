--CREATE TABLE bhv_buyer_activity AS 
WITH customer_data AS (
	SELECT
		"CustomerID",
		DATE_TRUNC('month', "InvoiceDate") AS "Year and Month",
		COUNT(DISTINCT "InvoiceNo") AS "Invoice count",
		SUM("Quantity") AS "Quantity",
		ROUND(SUM("Quantity"::NUMERIC * "UnitPrice"::NUMERIC), 2) AS "Sales"
	FROM bhv_online_retail_clean 
	GROUP BY "CustomerID", "Year and Month"
)
SELECT
	"CustomerID",
	COUNT("Year and Month") AS "Months Active",
	SUM("Invoice count") AS "Total Invoices",
	ROUND(SUM("Invoice count") / COUNT("Year and Month"), 2) AS "Avg active month invoices",
	SUM("Quantity") AS "Total quantity bought",
	ROUND(SUM("Quantity") / COUNT("Year and Month"), 2) AS "Avg active month purchases",
	SUM("Sales") AS "Monthly Spendings",
	ROUND(SUM("Sales") / COUNT("Year and Month"), 2) AS "Avg active round spendings",
	CASE WHEN COUNT("Year and Month") > 1 THEN TRUE ELSE FALSE END AS "Repeat Buyer Flag"
FROM customer_data
GROUP BY "CustomerID"
;
