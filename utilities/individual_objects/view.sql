CREATE OR REPLACE FORCE VIEW  "CEZ_SORT" ("ID_CEZ", "Година", "Месец", "Дата", "Показания дн.", "Показания н.", "Консумация дн.", "Консумация н.", "Консумация", "Период", "Дневно ср.", "Нощно ср.", "Цена", "Активна Дневна", "Активна нощна", "Баланс", "Акциз", "Достъп ЕРП", "Достъп пренос", "Пренос НН", "Пренос", "BALANCE_2", "Страда #", "АП #", "Клиент #", "Електромер #") AS 
    SELECT 
        ID_CEZ, 
        "YEAR", 
        "MONTH", 
        TO_CHAR(TIME_STAMP, 'YYYY-MM-DD'), 
        METER_DAYTIME, 
        METER_NIGHTTIME, 
        CONSUMPTION_DAYTIME, 
        CONSUMPTION_NIGHTTIME, 
        CONSUMPTION_TOTAL, 
        PERIOD, 
        DAILY_DAYTIME, 
        DAILY_NIGTHTIME, 
        PRICE, 
        ACTIVE_DAYTIME, 
        ACTIVE_NIGHTTIME, 
        BALANCE, 
        EXCISE, 
        ACCESS_ERP,
        ACCESS_TRANSPORT,
        TRANSPORT_LOW,
        TRANSPORT,
        BALANCE_2,
        BUILDING_ID,
        AP_ID,
        CLIENT_ID,
        METER_ID 
    FROM CEZ
    ORDER BY TIME_STAMP DESC
/