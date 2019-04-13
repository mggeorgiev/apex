CREATE OR REPLACE FORCE VIEW "CARS"."MAINTENANCE_PREDICTION" ("QUARTER", "CLASSIFICATION", "TOTAL") AS 
  SELECT 
    QUARTER, 
    CLASSIFICATION, 
    ROUND(AVG(TOTAL),2) AS TOTAL
  FROM MAINTENANCE 
    JOIN CALENDAR ON MAINTENANCE.DATE_COL=CALENDAR.DATE_COL 
    JOIN CLASSIFICATION ON MAINTENANCE.ID_CLASSIFICATION = CLASSIFICATION.ID_CLASSIFICATION 
    GROUP BY CLASSIFICATION, QUARTER
    ORDER BY QUARTER;
