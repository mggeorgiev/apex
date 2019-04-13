CREATE OR REPLACE FORCE VIEW "CARS"."TCO" ("DKN", "MILEAGE", "AMOUNT", "F_TOTAL", "M_TOTAL", "SUM", "KM", "PRICE_PER_KM", "ACTIVE") AS 
  SELECT
        DKN,
        MILEAGE,
        AMOUNT,
        f_TOTAL,
        m_total,
        f_TOTAL+m_total as sum,
        KM,
        ROUND((f_TOTAL+m_total)/KM,2) AS PRICE_PER_KM,
        ACTIVE
    FROM
    (select 
        ID_CAR,
        SUM(AMOUNT) AS AMOUNT,
        SUM(TOTAL) AS f_TOTAL,
        SUM(MILEAGE) AS MILEAGE,
        MIN(KM) as MIN_KM,
        MAX(KM) AS MAX_KM,
        (MAX(KM)-MIN(KM)) AS KM
    from FUEL
    GROUP BY ID_CAR) f
    JOIN
    (select 
        ID_CAR,
        SUM(TOTAL) as m_total
    from MAINTENANCE
    group by ID_CAR) m ON f.ID_CAR = m.ID_CAR
    JOIN CARS ON CARS.ID_CAR = f.ID_CAR
    ORDER BY ACTIVE DESC, DKN;
