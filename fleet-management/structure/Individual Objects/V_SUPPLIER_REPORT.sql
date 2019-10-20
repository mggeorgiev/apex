CREATE OR REPLACE FORCE VIEW "CARS"."V_SUPPLIER_REPORT" ("FUEL BRAND", "MILEAGE", "Fuel Price", "Amount", "l/100 km", "cost per km", "URBAN", "Extra URBAN", "COUNTRY") AS 
  SELECT
		fname AS fname,
		SUM(mlg) AS "MILEAGE",
		SUM(ttl) AS "Fuel Price",
		SUM(amt) AS "Amount",
		ROUND(SUM(amt)/SUM(mlg)*100,2) AS "l/100 km",
		ROUND(SUM(ttl)/SUM(mlg),2) AS "cost per km",
		SUM(urb) AS "Urban",
		SUM(exurb) AS "Extra-urban",
		SUM(cmb) AS "Combined"
		FROM
			(SELECT 
				FUEL_NAME fname, 
				MILEAGE AS mlg,
				AMOUNT amt,
				TOTAL ttl,
				CASE WHEN ID_DRIVE_TYPE = 1 THEN MILEAGE END AS urb,
				CASE WHEN ID_DRIVE_TYPE = 2 THEN MILEAGE END AS exurb,
				CASE WHEN ID_DRIVE_TYPE = 3 THEN MILEAGE END AS cmb
			FROM CARS.FUEL
			JOIN CARS.SUPPLIER_FUELS ON CARS.SUPPLIER_FUELS.ID_BRAND = CARS.FUEL.ID_BRAND) t
		GROUP BY fname
		HAVING SUM(MLG) >0
		ORDER BY SUM(MLG) DESC;
