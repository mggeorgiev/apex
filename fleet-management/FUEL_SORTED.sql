CREATE OR REPLACE FORCE VIEW "CARS"."FUEL_SORTED" ("ID_FUEL", "ID_CAR", "DATE_FUEL", "KM", "AMOUNT", "PRICE", "TOTAL", "ID_BRAND", "ID_DRIVE_TYPE", "YEAR_FUEL", "MONTH_FUEL", "DAY_FUEL", "WEEKDAY_FUEL", "MILEAGE", "PERIOD", "LKM") AS 
    SELECT      
		"ID_FUEL",
		"ID_CAR",
		FUEL."DATE_COL",
		"KM",
		"AMOUNT",
		"PRICE",
		"TOTAL",
		"FUEL_NAME",
		"ID_DRIVE_TYPE",
		CALENDAR."YEAR_COL",
		CALENDAR."MONTH_COL",
		CALENDAR."DAY",
		CALENDAR."WEEKDAY",
		"MILEAGE",
		"PERIOD",
		"LKM"
	FROM FUEL
	JOIN CARS.SUPPLIER_FUELS ON CARS.SUPPLIER_FUELS.ID_BRAND = FUEL.ID_BRAND
	JOIN CARS.CALENDAR ON CARS.CALENDAR.DATE_COL = FUEL.DATE_COL
	ORDER BY FUEL.DATE_COL DESC;
