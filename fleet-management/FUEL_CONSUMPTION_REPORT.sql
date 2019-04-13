CREATE OR REPLACE FORCE VIEW "CARS"."FUEL_CONSUMPTION_REPORT" ("year", "month", "MAKE", "MODEL", "DKN", "AMOUNT", "MILEAGE", "KPL") AS 
  SELECT
        CARS.CALENDAR.YEAR_COL as "year"
        ,CARS.CALENDAR.MONTH_COL as "month"
        ,make
        ,model
        ,dkn
        ,sum(AMOUNT) as amount
        ,sum(MILEAGE) as mileage
        ,round(sum(AMOUNT)/sum(MILEAGE)*100,2) as kpl
    FROM
        CARS.fuel  
    JOIN
        CARS.CARS       ON CARS.FUEL.ID_CAR = CARS.CARS.ID_CAR
    JOIN
        CARS.CALENDAR   ON CARS.CALENDAR.DATE_COL = CARS.FUEL.DATE_COL
    GROUP by CARS.CALENDAR.YEAR_COL, CARS.CALENDAR.MONTH_COL, make, model, dkn  
    order by CARS.CALENDAR.YEAR_COL DESC, CARS.CALENDAR.MONTH_COL;
