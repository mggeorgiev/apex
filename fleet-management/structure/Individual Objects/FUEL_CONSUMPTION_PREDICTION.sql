CREATE OR REPLACE FORCE VIEW "CARS"."FUEL_CONSUMPTION_PREDICTION" ("ID_CAR", "CAR", "DKN", "AVG_PERIOD", "PREDICTED_REFILL", "MILEAGE", "PREDICTED_MILEAGE", "L_100_KM") AS 
  SELECT 
        par.ID_CAR,
        MAKE || ' ' ||MODEL as "CAR",
        DKN,
        ROUND(AVG(PERIOD),0) as AVG_PERIOD,
        (SELECT MAX(DATE_COL) FROM FUEL chld WHERE chld.ID_CAR = par.ID_CAR)+ROUND(AVG(PERIOD),0) as PREDICTED_REFILL,
        ROUND(AVG(MILEAGE),0) MILEAGE,
        (SELECT MAX(KM) FROM FUEL fl_km WHERE fl_km.ID_CAR = par.ID_CAR) + ROUND(AVG(MILEAGE),0) AS PREDICTED_MILEAGE,
        ROUND(AVG(LKM)*100,2) as L_100_KM
    FROM FUEL par    
    JOIN CARS.CARS on par.ID_CAR = CARS.ID_CAR    
    WHERE MONTH_COL BETWEEN MONTH_COL - 2 AND MONTH_COL + 2 AND "ACTIVE" = 1
    GROUP BY par.ID_CAR, MAKE || ' ' ||MODEL, DKN;
