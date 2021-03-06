CREATE OR REPLACE FORCE VIEW "CARS"."MAINTENANCE_STAT" (
	"DKN", 
	"REFERENCE", 
	"LAST_MLG", 
	"PERIOD_IN_KM", 
	"LAST_DATE", 
	"PERIOD_IN_DAYS", 
	"CNT", 
	"SUM_INTERVAL", 
	"AVG_INTERVAL_DAYS", 
	"AVG_TOTAL", 
	"STDDEV_INTERVAL",
	"STDDEV_TOTAL", 
	"TOTAL") AS 
  SELECT 
    DKN,
    REFERENCE,
    MAX(MILEAGE) AS LAST_MLG,
    MAX(mx.KM)-MAX(MILEAGE) as PERIOD_IN_KM,
    MAX(MAINTENANCE.DATE_COL) AS LAST_DATE,
    ROUND(SYSDATE - MAX(MAINTENANCE.DATE_COL),0) as PERIOD_IN_DAYS,
    COUNT(REFERENCE) as CNT,
    SUM(INTERVAL_COL) as SUM_INTERVAL,
    ROUND(AVG(INTERVAL_COL),2) as AVG_INTERVAL,
    ROUND(AVG(TOTAL),2) AS AVG_TOTAL,
    ROUND(STDDEV(INTERVAL_COL),2) as STDDEV_INTERVAL,
    ROUND(STDDEV(TOTAL),2) AS STDDEV_TOTAL,
    SUM(TOTAL) AS TOTAL
  FROM MAINTENANCE 
    JOIN CALENDAR ON MAINTENANCE.DATE_COL=CALENDAR.DATE_COL 
    JOIN CLASSIFICATION ON MAINTENANCE.ID_CLASSIFICATION = CLASSIFICATION.ID_CLASSIFICATION
    JOIN CARS ON CARS.ID_CAR = MAINTENANCE.ID_CAR
    JOIN (SELECT ID_CAR, MAX(KM) as KM FROM FUEL GROUP BY ID_CAR) mx ON MAINTENANCE.ID_CAR = mx.ID_CAR
    WHERE CARS.ACTIVE=1
    GROUP BY DKN, REFERENCE
    ORDER BY REFERENCE, DKN, LAST_MLG DESC;
