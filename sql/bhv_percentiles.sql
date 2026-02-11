SELECT
  MIN("Purchase Variety") AS min,
  PERCENTILE_CONT(0.1) WITHIN GROUP (ORDER BY "Purchase Variety") AS p10,
  PERCENTILE_CONT(0.2) WITHIN GROUP (ORDER BY "Purchase Variety") AS p20,
  PERCENTILE_CONT(0.3) WITHIN GROUP (ORDER BY "Purchase Variety") AS p30,
  PERCENTILE_CONT(0.4) WITHIN GROUP (ORDER BY "Purchase Variety") AS p40,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Purchase Variety") AS median,
  PERCENTILE_CONT(0.6) WITHIN GROUP (ORDER BY "Purchase Variety") AS p60,
  PERCENTILE_CONT(0.7) WITHIN GROUP (ORDER BY "Purchase Variety") AS p70,
  PERCENTILE_CONT(0.8) WITHIN GROUP (ORDER BY "Purchase Variety") AS p80,
  PERCENTILE_CONT(0.9) WITHIN GROUP (ORDER BY "Purchase Variety") AS p90,
  MAX("Purchase Variety") AS max
FROM bhv_buyer_purchase_variety
