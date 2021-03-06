CREATE OR REPLACE FORCE VIEW "CARS"."FUEL_PRICES_BY_QUARTER" ("QUARTER", "AVG FUEL PRICE", "MEDIAN FUEL PRICE", "STDDEV FUEL PRICE") AS 
  SELECT
          CALENDAR.QUARTER AS "QUARTER",
          ROUND(AVG(price),2) AS "AVG FUEL PRICE",
          ROUND(MEDIAN(price),2) AS "MEDIAN FUEL PRICE",
          ROUND(STDDEV(price),2) AS "STDDEV FUEL PRICE"

       FROM
           CARS.FUEL
        JOIN CARS.CALENDAR ON CARS.CALENDAR.DATE_COL = CARS.FUEL.DATE_COL
       GROUP BY CALENDAR.QUARTER
       ORDER BY CALENDAR.QUARTER;
