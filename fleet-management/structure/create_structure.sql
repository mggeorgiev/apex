CREATE TABLE  "WEEKDAYS" 
   (	"ID_WEEKDAY" NUMBER, 
	"WEEKDAY_NAME" VARCHAR2(50), 
	"WEEKDAY_BG" VARCHAR2(50), 
	 CONSTRAINT "WEEKDAYS_PK" PRIMARY KEY ("ID_WEEKDAY") ENABLE
   )
/
CREATE TABLE  "CALENDAR" 
   (	"DATE_COL" DATE NOT NULL ENABLE, 
	"YEAR_COL" NUMBER, 
	"MONTH_COL" NUMBER, 
	"DAY" NUMBER, 
	"WEEKDAY" NUMBER, 
	"QUARTER" NUMBER, 
	 CONSTRAINT "CALENDAR_PK" PRIMARY KEY ("DATE_COL") ENABLE
   )
/
CREATE TABLE  "OWNER" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"FIRST_NAME" NVARCHAR2(255), 
	"LAST_NAME" NVARCHAR2(255), 
	 CONSTRAINT "OWNER_PK" PRIMARY KEY ("ID") ENABLE
   )
/
CREATE TABLE  "CARS" 
   (	"ID_CAR" NUMBER NOT NULL ENABLE, 
	"MAKE" VARCHAR2(45), 
	"MODEL" VARCHAR2(45), 
	"DKN" VARCHAR2(8), 
	"ACTIVE" NUMBER(*,0), 
	"VALID_FROM" DATE, 
	"VALID_TILL" DATE, 
	"OWNER_ID" NUMBER, 
	 CONSTRAINT "CARS_PK" PRIMARY KEY ("ID_CAR") ENABLE
   )
/
CREATE TABLE  "CLASSIFICATION" 
   (	"ID_CLASSIFICATION" NUMBER NOT NULL ENABLE, 
	"CLASSIFICATION" VARCHAR2(255), 
	 CONSTRAINT "CLASSIFICATION_PK" PRIMARY KEY ("ID_CLASSIFICATION") ENABLE
   )
/
CREATE TABLE  "CURRENCY" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"CURRENCY" VARCHAR2(50), 
	 CONSTRAINT "CURRENCY_PK" PRIMARY KEY ("ID") ENABLE
   )
/
CREATE TABLE  "DRIVE_TYPE" 
   (	"ID_DRIVE_TYPE" NUMBER, 
	"DRIVE_TYPE" VARCHAR2(100), 
	 CONSTRAINT "DRIVE_TYPE_PK" PRIMARY KEY ("ID_DRIVE_TYPE") ENABLE
   )
/
CREATE TABLE  "SUPPLIER_FUELS" 
   (	"ID_BRAND" NUMBER, 
	"SUPPLIER_NAME" VARCHAR2(100), 
	"FUEL_BRAND" VARCHAR2(100), 
	"FUEL_NAME" NVARCHAR2(50), 
	"TYPE" NVARCHAR2(50), 
	 CONSTRAINT "SUPPLIER_FUELS_PK" PRIMARY KEY ("ID_BRAND") ENABLE
   )
/
CREATE TABLE  "FUEL" 
   (	"ID_FUEL" NUMBER NOT NULL ENABLE, 
	"ID_CAR" NUMBER, 
	"DATE_COL" DATE, 
	"KM" NUMBER, 
	"AMOUNT" NUMBER, 
	"PRICE" NUMBER, 
	"TOTAL" NUMBER, 
	"ID_BRAND" NUMBER, 
	"ID_DRIVE_TYPE" NUMBER, 
	"YEAR_COL" NUMBER, 
	"MONTH_COL" NUMBER, 
	"DAY_COL" NUMBER, 
	"WEEKDAY_COL" NUMBER, 
	"MILEAGE" NUMBER, 
	"PERIOD" NUMBER, 
	"LKM" NUMBER, 
	"CURRENCY" NUMBER, 
	 CONSTRAINT "FUEL_PK" PRIMARY KEY ("ID_FUEL") ENABLE
   )  ENABLE ROW MOVEMENT
/
CREATE TABLE  "FUELTMP" 
   (	"ID" NUMBER, 
	"МАРКА" VARCHAR2(30), 
	"ДАТА" DATE, 
	"ПРОБЕГ" NUMBER, 
	"КОЛИЧЕСТВО" VARCHAR2(30), 
	"ЦЕНА" VARCHAR2(30), 
	"СТОЙНОСТ" VARCHAR2(30), 
	"БРАНД" VARCHAR2(30), 
	"KM" VARCHAR2(30), 
	"ВИД" VARCHAR2(30), 
	"РАЗХОД" VARCHAR2(30), 
	"РАЗХОДKM" VARCHAR2(30), 
	"ИНТЕРВАЛ" VARCHAR2(30), 
	"ГОДИНА" NUMBER, 
	"МЕСЕЦ" NUMBER, 
	"ДЕН" NUMBER, 
	"ДЕН_ОТ_СЕДМИЦА" VARCHAR2(30), 
	"ROW_INDEX" VARCHAR2(30), 
	 CONSTRAINT "FUELTMP_PK" PRIMARY KEY ("ID") ENABLE
   )
/
CREATE TABLE  "FUEL_APP" 
   (	"ID_FUEL" NUMBER NOT NULL ENABLE, 
	"ID_CAR" NUMBER, 
	"DATE_COL" DATE, 
	"KM" NUMBER, 
	"AMOUNT" NUMBER, 
	"PRICE" NUMBER, 
	"TOTAL" NUMBER, 
	"ID_BRAND" NUMBER, 
	"ID_DRIVE_TYPE" NUMBER, 
	"CURRENCY" NUMBER, 
	 CONSTRAINT "FUEL_APP_PK" PRIMARY KEY ("ID_FUEL") ENABLE
   )
/
CREATE TABLE  "HTMLDB_PLAN_TABLE" 
   (	"STATEMENT_ID" VARCHAR2(30), 
	"PLAN_ID" NUMBER, 
	"TIMESTAMP" DATE, 
	"REMARKS" VARCHAR2(4000), 
	"OPERATION" VARCHAR2(30), 
	"OPTIONS" VARCHAR2(255), 
	"OBJECT_NODE" VARCHAR2(128), 
	"OBJECT_OWNER" VARCHAR2(128), 
	"OBJECT_NAME" VARCHAR2(128), 
	"OBJECT_ALIAS" VARCHAR2(261), 
	"OBJECT_INSTANCE" NUMBER(*,0), 
	"OBJECT_TYPE" VARCHAR2(128), 
	"OPTIMIZER" VARCHAR2(255), 
	"SEARCH_COLUMNS" NUMBER, 
	"ID" NUMBER(*,0), 
	"PARENT_ID" NUMBER(*,0), 
	"DEPTH" NUMBER(*,0), 
	"POSITION" NUMBER(*,0), 
	"COST" NUMBER(*,0), 
	"CARDINALITY" NUMBER(*,0), 
	"BYTES" NUMBER(*,0), 
	"OTHER_TAG" VARCHAR2(255), 
	"PARTITION_START" VARCHAR2(255), 
	"PARTITION_STOP" VARCHAR2(255), 
	"PARTITION_ID" NUMBER(*,0), 
	"OTHER" LONG, 
	"DISTRIBUTION" VARCHAR2(30), 
	"CPU_COST" NUMBER(*,0), 
	"IO_COST" NUMBER(*,0), 
	"TEMP_SPACE" NUMBER(*,0), 
	"ACCESS_PREDICATES" VARCHAR2(4000), 
	"FILTER_PREDICATES" VARCHAR2(4000), 
	"PROJECTION" VARCHAR2(4000), 
	"TIME" NUMBER(*,0), 
	"QBLOCK_NAME" VARCHAR2(128)
   )
/
CREATE TABLE  "MAINTENANCE" 
   (	"ID_MAINTENANCE" NUMBER NOT NULL ENABLE, 
	"ID_CAR" NUMBER, 
	"DATE_COL" DATE, 
	"MILEAGE" NUMBER, 
	"REFERENCE" VARCHAR2(255), 
	"TOTAL" NUMBER, 
	"INTERVAL_COL" NUMBER, 
	"ID_CLASSIFICATION" NUMBER, 
	"PRICE_PER_KM" NUMBER, 
	"INTERVAL_DAYS" NUMBER, 
	"TOTAL_IN_BGN" NUMBER, 
	 CONSTRAINT "MAINTENANCE_PK" PRIMARY KEY ("ID_MAINTENANCE", "ID_CAR") ENABLE
   )  ENABLE ROW MOVEMENT
/
CREATE TABLE  "MAINTENANCE_PRP" 
   (	"ID" NUMBER, 
	"CAR" VARCHAR2(30), 
	"ДАТА" DATE, 
	"КИЛОМЕТРИ" NUMBER, 
	"ЗАБЕЛЕЖКА" VARCHAR2(255), 
	"ЦЕНА" VARCHAR2(30), 
	"ИНТЕРВАЛ" VARCHAR2(30), 
	"КЛАСИФИКАЦИЯ" VARCHAR2(30), 
	"ГОДИНА" NUMBER, 
	"МЕСЕЦ" NUMBER, 
	 CONSTRAINT "MAINTENANCE_PRP_PK" PRIMARY KEY ("ID") ENABLE
   )
/
ALTER TABLE  "CALENDAR" ADD CONSTRAINT "CALENDAR_FK_WEEKDAY" FOREIGN KEY ("WEEKDAY")
	  REFERENCES  "WEEKDAYS" ("ID_WEEKDAY") ENABLE
/
ALTER TABLE  "CARS" ADD CONSTRAINT "CARS_OWNERS_FK" FOREIGN KEY ("OWNER_ID")
	  REFERENCES  "OWNER" ("ID") ENABLE
/
ALTER TABLE  "FUEL_APP" ADD CONSTRAINT "FUEL_APP_BRAND_FK" FOREIGN KEY ("ID_BRAND")
	  REFERENCES  "SUPPLIER_FUELS" ("ID_BRAND") ON DELETE SET NULL ENABLE
/
ALTER TABLE  "FUEL_APP" ADD CONSTRAINT "FUEL_APP_DRIVETYPE_FK" FOREIGN KEY ("ID_DRIVE_TYPE")
	  REFERENCES  "DRIVE_TYPE" ("ID_DRIVE_TYPE") ON DELETE SET NULL ENABLE
/
ALTER TABLE  "FUEL_APP" ADD CONSTRAINT "FUEL_APP_FK" FOREIGN KEY ("ID_CAR")
	  REFERENCES  "CARS" ("ID_CAR") ON DELETE SET NULL ENABLE
/
ALTER TABLE  "FUEL" ADD CONSTRAINT "FUEL_CURRENCY_FK" FOREIGN KEY ("CURRENCY")
	  REFERENCES  "CURRENCY" ("ID") ON DELETE SET NULL ENABLE
/
ALTER TABLE  "FUEL" ADD CONSTRAINT "FUEL_FK_CALENDAR" FOREIGN KEY ("DATE_COL")
	  REFERENCES  "CALENDAR" ("DATE_COL") ENABLE
/
ALTER TABLE  "FUEL" ADD CONSTRAINT "FUEL_FK_CAR" FOREIGN KEY ("ID_CAR")
	  REFERENCES  "CARS" ("ID_CAR") ENABLE
/
ALTER TABLE  "FUEL" ADD CONSTRAINT "FUEL_FK_DRIVETYPE" FOREIGN KEY ("ID_DRIVE_TYPE")
	  REFERENCES  "DRIVE_TYPE" ("ID_DRIVE_TYPE") ENABLE
/
ALTER TABLE  "FUEL" ADD CONSTRAINT "FUEL_FK_FBRAND" FOREIGN KEY ("ID_BRAND")
	  REFERENCES  "SUPPLIER_FUELS" ("ID_BRAND") ENABLE
/
ALTER TABLE  "MAINTENANCE" ADD CONSTRAINT "MAINTENANCE_CARS_FK" FOREIGN KEY ("ID_CAR")
	  REFERENCES  "CARS" ("ID_CAR") ENABLE
/
ALTER TABLE  "MAINTENANCE" ADD CONSTRAINT "MAINTENANCE_CLASSIFICATION_FK" FOREIGN KEY ("ID_CLASSIFICATION")
	  REFERENCES  "CLASSIFICATION" ("ID_CLASSIFICATION") ENABLE
/
ALTER TABLE  "MAINTENANCE" ADD CONSTRAINT "MAINTENANCE_FK_CALENDAR" FOREIGN KEY ("DATE_COL")
	  REFERENCES  "CALENDAR" ("DATE_COL") ENABLE
/
CREATE OR REPLACE FUNCTION  "MILEAGEFUNC" 
(idfuel_in IN NUMBER)
return NUMBER
is
begin
RETURN(
    SELECT diff FROM (
        SELECT 
            LAG(KM,1) OVER (PARTITION BY ID_CAR ORDER BY DATE_COL DESC) - km AS diff
        FROM FUEL
        WHERE ID_FUEL = idfuel_in
        ORDER BY DATE_COL DESC)
    
end;
/

CREATE OR REPLACE FUNCTION  "CUSTOM_HASH" (p_username in varchar2, p_password in varchar2)
return varchar2
is
  l_password varchar2(4000);
  l_salt varchar2(4000) := 'JVBH4UC966E8QBHK47NGHACBUOXD2I';
begin

-- This function should be wrapped, as the hash algorhythm is exposed here.
-- You can change the value of l_salt or the method of which to call the
-- DBMS_OBFUSCATOIN toolkit, but you much reset all of your passwords
-- if you choose to do this.

l_password := utl_raw.cast_to_raw(dbms_obfuscation_toolkit.md5
  (input_string => p_password || substr(l_salt,10,13) || p_username ||
    substr(l_salt, 4,10)));
return l_password;
end;
/

CREATE OR REPLACE FUNCTION  "CUSTOM_AUTH" (p_username in VARCHAR2, p_password in VARCHAR2)
return BOOLEAN
is
  l_password varchar2(4000);
  l_stored_password varchar2(4000);
  l_expires_on date;
  l_count number;
begin
-- First, check to see if the user is in the user table
select count(*) into l_count from demo_users where user_name = p_username;
if l_count > 0 then  -- First, we fetch the stored hashed password & expire date  select password, expires_on into l_stored_password, l_expires_on
   from demo_users where user_name = p_username;

  -- Next, we check to see if the user's account is expired  -- If it is, return FALSE
  if l_expires_on > sysdate or l_expires_on is null then
    -- If the account is not expired, we have to apply the custom hash
    -- function to the password
    l_password := custom_hash(p_username, p_password);

    -- Finally, we compare them to see if they are the same and return
    -- either TRUE or FALSE
    if l_password = l_stored_password then
      return true;
    else
      return false;
    end if;
  else
    return false;
  end if;
else
  -- The username provided is not in the DEMO_USERS table
  return false;
end if;
end;
/

CREATE INDEX  "CARS_DKN_IDX" ON  "CARS" ("DKN", "ACTIVE", "VALID_FROM", "VALID_TILL")
/
CREATE INDEX  "FUEL_DATE_DESC_IDX" ON  "FUEL" ("ID_CAR", "DATE_COL" DESC, "KM", "AMOUNT", "PRICE", "TOTAL", "ID_BRAND", "ID_DRIVE_TYPE", "MILEAGE", "LKM", "PERIOD")
/
CREATE UNIQUE INDEX  "WEEKDAYS_IDX1" ON  "WEEKDAYS" ("ID_WEEKDAY", "WEEKDAY_NAME", "WEEKDAY_BG")
/
CREATE OR REPLACE PROCEDURE  "UPDARE_MAINTENANCE_INTERVAL" is
begin
UPDATE MAINTENANCE
SET "INTERVAL_DAYS" =  (                        SELECT interval_days FROM (
                                        SELECT 
                                            ID_MAINTENANCE,
                                            ID_CAR,
                                            REFERENCE,
                                            DATE_COL,
                                            MILEAGE,
                                            LEAD (MILEAGE,1) OVER (PARTITION BY ID_CAR, REFERENCE ORDER BY DATE_COL DESC) AS previous_maintenance,
                                            MILEAGE - LEAD (MILEAGE,1) OVER (PARTITION BY ID_CAR, REFERENCE ORDER BY DATE_COL DESC) AS interval_mlg,
                                            DATE_COL - LEAD (DATE_COL,1) OVER (PARTITION BY ID_CAR, REFERENCE ORDER BY DATE_COL DESC) AS interval_days
                                        FROM MAINTENANCE
                                        ORDER BY DATE_COL DESC) t 
                    WHERE t.ID_MAINTENANCE = MAINTENANCE.ID_MAINTENANCE )   
WHERE INTERVAL_COL IS NOT NULL AND INTERVAL_DAYS IS NULL
;
end;
/

CREATE OR REPLACE PROCEDURE  "SUPPLIER_REPORT" AS
DECLARE
   sql_stmt    VARCHAR2(200);
   fuel_rec     FUEL%ROWTYPE;
BEGIN
	SELECT
        SUPPLIER_FUELS.SUPPLIER_NAME || ' ' || SUPPLIER_FUELS.FUEL_BRAND AS "FUEL BRAND",        SUM(MILEAGE) AS "MILEAGE",        SUM(TOTAL) AS "Fuel Price",        SUM(AMOUNT) AS "Amount",        ROUND(SUM(AMOUNT)/SUM(MILEAGE)*100,2) AS "l/100 km",        ROUND(SUM(TOTAL)/SUM(MILEAGE),2) AS "cost per km"        INTO fuel_rec
    FROM
        FUEL
    JOIN SUPPLIER_FUELS ON SUPPLIER_FUELS.ID_BRAND = FUEL.ID_BRAND
    GROUP BY SUPPLIER_FUELS.SUPPLIER_NAME || ' ' || SUPPLIER_FUELS.FUEL_BRAND    HAVING SUM(MILEAGE) >0    ORDER BY MILEAGE DESC ;

END SUPPLIER_REPORT;
/

CREATE OR REPLACE PROCEDURE  "FX_FUEL" (curency IN VARCHAR2 default 'EUR')DECLARE
    l_fuel_id NUMBER;
    l_car VARCHAR2(50);
    l_date VARCHAR2(50);
    l_km FUEL.KM%TYPE;
    l_amount FUEL.AMOUNT%TYPE;
    l_type FUEL.TOTAL%TYPE;
    l_currency CURRENCY.CURRENCY%TYPE;
    l_fuel_brand SUPPLIER_FUELS.FUEL_NAME%TYPE;
IS
BEGIN
SELECT 
		FUEL.ID_FUEL,
		CARS.MAKE || ' ' || CARS.MODEL AS "CAR", 		TO_CHAR(FUEL.DATE_COL, 'YYYY/MM/DD') as "DATE", 		KM,
		AMOUNT,
		PRICE,
		TOTAL,
        CURRENCY.CURRENCY AS "CURRENCY",		FUEL_NAME AS "FUEL BRAND",		DRIVE_TYPE AS "DRIVE TYPE",		MILEAGE,
		LKM,
		PERIOD,
		CALENDAR.YEAR_COL AS "YEAR",		CALENDAR.QUARTER AS "QUARTER",		CALENDAR.MONTH_COL AS "MONTH",		CALENDAR.DAY AS "DAY",		WEEKDAYS.WEEKDAY_BG AS "WEEKDAY"    INTO
        l_fuel_id,
        l_car,
        l_date,
        l_km,
        l_amount,
        l_type,
        l_currency,
        l_fuel_brand
    FROM FUEL
    JOIN CARS ON FUEL.ID_CAR=CARS.ID_CAR
    JOIN SUPPLIER_FUELS ON FUEL.ID_BRAND = SUPPLIER_FUELS.ID_BRAND
    JOIN DRIVE_TYPE ON FUEL.ID_DRIVE_TYPE = DRIVE_TYPE.ID_DRIVE_TYPE
    JOIN CALENDAR ON CALENDAR.DATE_COL = FUEL.DATE_COL
    JOIN WEEKDAYS ON WEEKDAYS.ID_WEEKDAY = CALENDAR.WEEKDAY
    JOIN CURRENCY ON CURRENCY.ID = FUEL.CURRENCY
    ORDER BY FUEL.DATE_COL DESC;
END;
/

CREATE OR REPLACE PROCEDURE  "ETL_MAINTENANCE" is
begin

INSERT INTO CALENDAR (DATE_COL) (SELECT ДАТА FROM MAINTENANCE_PRP MINUS SELECT DATE_COL FROM CALENDAR);

INSERT INTO MAINTENANCE
    (ID_MAINTENANCE,
    ID_CAR,
    DATE_COL,
    MILEAGE, 
    REFERENCE,
    TOTAL,
    INTERVAL_COL,
    ID_CLASSIFICATION,
    PRICE_PER_KM)
    SELECT
        ID, 
        CAR,
        ДАТА, 
        КИЛОМЕТРИ, 
        ЗАБЕЛЕЖКА, 
        REPLACE(ЦЕНА, ' лв.'),         КИЛОМЕТРИ - (SELECT MAX(MILEAGE) FROM MAINTENANCE WHERE MAINTENANCE.ID_CAR = mp.CAR AND REFERENCE = mp.ЗАБЕЛЕЖКА ) AS interval,
        КЛАСИФИКАЦИЯ,
        ROUND(ЦЕНА/(КИЛОМЕТРИ - (SELECT MAX(MILEAGE) FROM MAINTENANCE WHERE MAINTENANCE.ID_CAR = mp.CAR AND REFERENCE = mp.ЗАБЕЛЕЖКА )),2)
    FROM MAINTENANCE_PRP mp
    ORDER BY ДАТА DESC;
end;
/

CREATE OR REPLACE PROCEDURE  "CLEAN_MAINTENANCE_PRP" 
is
begin
    DELETE FROM 
        MAINTENANCE_PRP
    WHERE ID IN (SELECT ID_MAINTENANCE FROM MAINTENANCE);
end;
/

CREATE OR REPLACE PROCEDURE  "APPROVE_MAINTENANCE" (id_number IN NUMBER)
is
begin
INSERT INTO CALENDAR (DATE_COL) (SELECT ДАТА FROM MAINTENANCE_PRP WHERE ID = id_number MINUS SELECT DATE_COL FROM CALENDAR);

INSERT INTO MAINTENANCE
    (ID_MAINTENANCE,
    ID_CAR,
    DATE_COL,
    MILEAGE, 
    REFERENCE,
    TOTAL,
    INTERVAL_COL,
    ID_CLASSIFICATION,
    PRICE_PER_KM)
    SELECT
        ID, 
        CAR,
        ДАТА, 
        КИЛОМЕТРИ, 
        ЗАБЕЛЕЖКА, 
        REPLACE(ЦЕНА, ' лв.'),         КИЛОМЕТРИ - (SELECT MAX(MILEAGE) FROM MAINTENANCE WHERE MAINTENANCE.ID_CAR = mp.CAR AND REFERENCE = mp.ЗАБЕЛЕЖКА ) AS interval,
        КЛАСИФИКАЦИЯ,
        ROUND(ЦЕНА/(КИЛОМЕТРИ - (SELECT MAX(MILEAGE) FROM MAINTENANCE WHERE MAINTENANCE.ID_CAR = mp.CAR AND REFERENCE = mp.ЗАБЕЛЕЖКА )),2)
    FROM MAINTENANCE_PRP mp
    WHERE mp.ID = id_number
    ORDER BY ДАТА DESC;

DELETE FROM MAINTENANCE_PRP WHERE ID = id_number;
end;
/

 CREATE SEQUENCE   "OWNER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "MAINTENANCE_PRP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1588 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "MAINTENANCE_PREP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "FUELTMP_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3363 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "DEMO_USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "DEMO_PROD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "DEMO_ORD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "DEMO_ORDER_ITEMS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "DEMO_CUST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "CURRENCY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "CARS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 43 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "ARTICULES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "APEX_ACCESS_CONTROL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "APEX$_WS_SEQ"  MINVALUE 100 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE
/
CREATE OR REPLACE TRIGGER  "BI_OWNER" 
  before insert on "OWNER"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "OWNER_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_OWNER" ENABLE
/
CREATE OR REPLACE TRIGGER  "BI_MAINTENANCE_PRP" 
  before insert on "MAINTENANCE_PRP"              
  for each row 
begin  
  if :new."ID" is null then
    select "MAINTENANCE_PRP_SEQ".nextval into :new."ID" from dual;
  end if;
end;

/
ALTER TRIGGER  "BI_MAINTENANCE_PRP" ENABLE
/
CREATE OR REPLACE TRIGGER  "BI_FUEL_CALENDAR" 
BEFORE
insert or update on "FUEL"
for each row
begin
    INSERT INTO CALENDAR (DATE_COL)
    select :new.DATE_COL
    from dual
    WHERE NOT EXISTS(select DATE_COL 
                     from CALENDAR 
                     where (DATE_COL= :new.DATE_COL));
end;

/
ALTER TRIGGER  "BI_FUEL_CALENDAR" ENABLE
/
CREATE OR REPLACE TRIGGER  "BI_FUEL_APP" 
  before insert on "FUEL_APP"               
  for each row  
begin   
  if :NEW."ID_FUEL" is null then 
    select "FUELTMP_SEQ".nextval into :NEW."ID_FUEL" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_FUEL_APP" ENABLE
/
CREATE OR REPLACE TRIGGER  "BI_FUELTMP" 
  before insert on "FUELTMP"              
  for each row 
begin  
  if :new."ID" is null then
    select "FUELTMP_SEQ".nextval into :new."ID" from sys.dual;
  end if;
end;

/
ALTER TRIGGER  "BI_FUELTMP" ENABLE
/
CREATE OR REPLACE TRIGGER  "BI_CURRENCY" 
  before insert on "CURRENCY"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "CURRENCY_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_CURRENCY" ENABLE
/
CREATE OR REPLACE TRIGGER  "BI_CLASSIFICATION" 
  before insert on "CLASSIFICATION"               
  for each row  
begin   
  if :NEW."ID_CLASSIFICATION" is null then 
    select "ARTICULES_SEQ".nextval into :NEW."ID_CLASSIFICATION" from dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_CLASSIFICATION" ENABLE
/
CREATE OR REPLACE TRIGGER  "BI_CARS"   before insert on "CARS"                 for each row    if :NEW."ID_CAR" is null then     select "CARS_SEQ".nextval into :NEW."ID_CAR" from dual;   end if; end; 
/
ALTER TRIGGER  "BI_CARS" ENABLE
/
CREATE OR REPLACE TRIGGER  "AI_FUEL_APP_FUEL" 
    AFTER insert on "FUEL_APP"
    for each row
    follows "AI_FUEL_APP_CALENDAR"
    begin
    INSERT INTO FUEL 
        (ID_FUEL
        ,ID_CAR
        ,DATE_COL
        ,KM
        ,AMOUNT
        ,PRICE
        ,TOTAL
        ,ID_BRAND
        ,ID_DRIVE_TYPE
        ,YEAR_COL
        ,MONTH_COL
        ,DAY_COL
        ,WEEKDAY_COL
        ,CURRENCY) 
            SELECT 
                :new.ID_FUEL
                ,:new.ID_CAR
                ,:new.DATE_COL
                ,:new.KM
                ,:new.AMOUNT
                ,:new.PRICE
                ,:new.TOTAL
                ,:new.ID_BRAND
                ,:new.ID_DRIVE_TYPE
                ,EXTRACT(year FROM :new.DATE_COL)
                ,EXTRACT(month FROM :new.DATE_COL)
                ,EXTRACT(day FROM :new.DATE_COL)
                ,TO_NUMBER(TO_CHAR(:new.DATE_COL, 'd'))
                ,:new.CURRENCY
            FROM DUAL;
    end;

/
ALTER TRIGGER  "AI_FUEL_APP_FUEL" ENABLE
/
CREATE OR REPLACE TRIGGER  "AI_FUEL_APP_CALENDAR" 
AFTER
insert on "FUEL_APP"
for each row
begin
    --lock table CARS.CALENDAR in exclusive mode;
    
    INSERT INTO CALENDAR (DATE_COL)
    select :new.DATE_COL
    from dual
    WHERE NOT EXISTS(select DATE_COL 
                     from CALENDAR 
                     where (DATE_COL= :new.DATE_COL));
exception
     when dup_val_on_index then null;
end;

/
ALTER TRIGGER  "AI_FUEL_APP_CALENDAR" ENABLE
/
CREATE OR REPLACE TRIGGER  "AI_CALENDAR_UPDATE" 
AFTER
insert on "CALENDAR"
begin
UPDATE CALENDAR 
SET 
    YEAR_COL = EXTRACT(YEAR FROM DATE_COL), 
    MONTH_COL= EXTRACT(MONTH FROM DATE_COL),
    "DAY" = EXTRACT(DAY FROM DATE_COL), 
    WEEKDAY = TO_NUMBER(TO_CHAR(DATE_COL, 'd')), 
    QUARTER = CEIL(EXTRACT(MONTH FROM DATE_COL)/3);
end;

/
ALTER TRIGGER  "AI_CALENDAR_UPDATE" ENABLE
/
CREATE OR REPLACE FORCE VIEW  "FUEL_CONSUMPTION_PREDICTION" ("ID_CAR", "CAR", "DKN", "AVG_PERIOD", "PREDICTED_REFILL", "MILEAGE", "PREDICTED_MILEAGE", "L_100_KM") AS 
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
    JOIN CARS on par.ID_CAR = CARS.ID_CAR    
    WHERE MONTH_COL BETWEEN MONTH_COL - 2 AND MONTH_COL + 2 AND "ACTIVE" = 1
    GROUP BY par.ID_CAR, MAKE || ' ' ||MODEL, DKN
/
CREATE OR REPLACE FORCE VIEW  "FUEL_MILEAGE" ("ID_FUEL", "MLG_OLD", "MLG_NEW") AS 
  SELECT 
	    ID_FUEL,
	    LAG (KM,1) OVER (PARTITION BY ID_CAR ORDER BY DATE_COL DESC) AS next_refuel,
	    LAG (KM,1) OVER (PARTITION BY ID_CAR ORDER BY DATE_COL DESC) - KM AS diff
	FROM FUEL
	ORDER BY DATE_COL DESC
/
CREATE OR REPLACE FORCE VIEW  "FUEL_PRICES_BY_MONTH" ("MONTH", "MAX FUEL PRICE", "MIN FUEL PRICE", "AVG FUEL PRICE", "MEDIAN FUEL PRICE", "STDDEV FUEL PRICE") AS 
  SELECT 
  	CALENDAR.MONTH_COL AS "MONTH"
  	,ROUND(MAX(price),2) AS "MAX FUEL PRICE"
  	,ROUND(MIN(price),2) AS "MIN FUEL PRICE"
  	,ROUND(AVG(price),2) AS "AVG FUEL PRICE"
  	,ROUND(MEDIAN(price),2) AS "MEDIAN FUEL PRICE"
  	,ROUND(STDDEV(price),2) AS "STDDEV FUEL PRICE"
  	FROM
         (SELECT 
			 	DATE_COL
			 	,CASE WHEN CURRENCY=2 THEN PRICE/1.95583 ELSE PRICE END AS "PRICE"
			 FROM FUEL) f
  		JOIN CALENDAR ON CALENDAR.DATE_COL = f.DATE_COL
  		GROUP BY CALENDAR.MONTH_COL
  		ORDER BY CALENDAR.MONTH_COL
/
CREATE OR REPLACE FORCE VIEW  "FUEL_PRICES_BY_QUARTER" ("QUARTER", "AVG FUEL PRICE", "MEDIAN FUEL PRICE", "STDDEV FUEL PRICE", "MIN FUEL PRICE", "MAX FUEL PRICE") AS 
  SELECT
          CALENDAR.QUARTER AS "QUARTER",
          ROUND(AVG(price),2) AS "AVG FUEL PRICE",
          ROUND(MEDIAN(price),2) AS "MEDIAN FUEL PRICE",
          ROUND(STDDEV(price),2) AS "STDDEV FUEL PRICE",
          ROUND(MIN(price),2) AS "MIN FUEL PRICE",
          ROUND(MAX(price),2) AS "MAX FUEL PRICE"
       FROM
         (SELECT 
			 	DATE_COL
			 	,CASE WHEN CURRENCY=2 THEN PRICE/1.95583 ELSE PRICE END AS "PRICE"
			 FROM FUEL) f
        JOIN CALENDAR ON CALENDAR.DATE_COL = f.DATE_COL
       GROUP BY CALENDAR.QUARTER
       ORDER BY CALENDAR.QUARTER
/
CREATE OR REPLACE FORCE VIEW  "FUEL_PRICES_BY_YEAR" ("YEAR", "AVG FUEL PRICE", "MEDIAN FUEL PRICE", "STDDEV FUEL PRICE", "MIN FUEL PRICE", "MAX FUEL PRICE") AS 
  SELECT 
            CALENDAR.YEAR_COL as "YEAR",
            ROUND(AVG(PRICE),2) AS "AVG FUEL PRICE",
            ROUND(MEDIAN(price),2) AS "MEDIAN FUEL PRICE",
            ROUND(STDDEV(price),2) AS "STDDEV FUEL PRICE",
            ROUND(MIN(price),2) as "MIN FUEL PRICE",
            ROUND(MAX(price),2) as "MAX FUEL PRICE"
        FROM
         (SELECT 
			 	DATE_COL
			 	,CASE WHEN CURRENCY=2 THEN PRICE/1.95583 ELSE PRICE END AS "PRICE"
			 FROM FUEL) f
        JOIN CALENDAR ON CALENDAR.DATE_COL = f.DATE_COL
        group by    CALENDAR.YEAR_COL
        ORDER BY    CALENDAR.YEAR_COL DESC
/
CREATE OR REPLACE FORCE VIEW  "FUEL_REFUEL" ("ID_FUEL", "CAR", "DATE", "KM", "AMOUNT", "PRICE", "TOTAL", "FUEL BRAND", "DRIVE TYPE", "MILEAGE", "LKM", "PERIOD", "YEAR", "QUARTER", "MONTH", "DAY", "WEEKDAY") AS 
  SELECT
            CARS.FUEL."ID_FUEL",
            CARS.MAKE || ' ' || CARS.MODEL AS "CAR",
            TO_CHAR(FUEL.DATE_COL, 'YYYY/MM/DD'),
            KM,
            AMOUNT,
            PRICE,
            TOTAL,
            FUEL_NAME AS "FUEL BRAND",
            DRIVE_TYPE,
            MILEAGE,
            LKM,
            PERIOD,
            CALENDAR.YEAR_COL,
            CALENDAR.QUARTER,
            CALENDAR.MONTH_COL,
            CALENDAR.DAY,
            WEEKDAYS.WEEKDAY_BG
        FROM CARS.FUEL
        JOIN CARS.CARS ON CARS.FUEL.ID_CAR=CARS.CARS.ID_CAR
        JOIN CARS.SUPPLIER_FUELS ON CARS.FUEL.ID_BRAND = CARS.SUPPLIER_FUELS.ID_BRAND
        JOIN CARS.DRIVE_TYPE ON CARS.FUEL.ID_DRIVE_TYPE = CARS.DRIVE_TYPE.ID_DRIVE_TYPE
        JOIN CARS.CALENDAR ON CARS.CALENDAR.DATE_COL = CARS.FUEL.DATE_COL
        JOIN CARS.WEEKDAYS ON CARS.WEEKDAYS.ID_WEEKDAY = CARS.CALENDAR.WEEKDAY
        ORDER BY FUEL.DATE_COL DESC
/
CREATE OR REPLACE FORCE VIEW  "FUEL_SORTED" ("ID_FUEL", "ID_CAR", "DATE_FUEL", "KM", "AMOUNT", "PRICE", "TOTAL", "ID_BRAND", "ID_DRIVE_TYPE", "YEAR_FUEL", "MONTH_FUEL", "DAY_FUEL", "WEEKDAY_FUEL", "MILEAGE", "PERIOD", "LKM", "CURRENCY") AS 
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
            "LKM",
            "CURRENCY"
        FROM FUEL
        JOIN SUPPLIER_FUELS ON SUPPLIER_FUELS.ID_BRAND = FUEL.ID_BRAND
        JOIN CALENDAR ON CALENDAR.DATE_COL = FUEL.DATE_COL
        ORDER BY FUEL.DATE_COL DESC
/
CREATE OR REPLACE FORCE VIEW  "MAINTENANCE_PPK" ("DKN", "MLG", "TOTAL", "PPK") AS 
  SELECT
        DKN,
        MAX(MILEAGE) - MIN (MILEAGE) AS "MLG",
        SUM(TOTAL) as "TOTAL IN L", 
        ROUND(SUM(TOTAL) / (MAX(MILEAGE) - MIN (MILEAGE)),2) as "PRICE PER KM IN L"
    FROM MAINTENANCE  m JOIN CARS ON CARS.ID_CAR = m.ID_CAR
    GROUP BY DKN
    ORDER BY DKN DESC
/
CREATE OR REPLACE FORCE VIEW  "MAINTENANCE_PREDICTION" ("QUARTER", "CLASSIFICATION", "TOTAL") AS 
  SELECT 
    QUARTER, 
    CLASSIFICATION, 
    ROUND(AVG(TOTAL),2) AS TOTAL
  FROM MAINTENANCE 
    JOIN CALENDAR ON MAINTENANCE.DATE_COL=CALENDAR.DATE_COL 
    JOIN CLASSIFICATION ON MAINTENANCE.ID_CLASSIFICATION = CLASSIFICATION.ID_CLASSIFICATION 
    GROUP BY CLASSIFICATION, QUARTER
    ORDER BY QUARTER
/
CREATE OR REPLACE FORCE VIEW  "MAINTENANCE_SORT" ("ID_MAINTENANCE", "CAR", "DATE", "MILEAGE", "REFERENCE", "TOTAL", "INTERVAL_COL", "CLASSIFICATION", "YEAR", "MONTH", "PRICE_PER_KM") AS 
  SELECT
      "ID_MAINTENANCE",
      CONCAT( MAKE, CONCAT(' ', MODEL)) AS "CAR",
      MAINTENANCE."DATE_COL",
      "MILEAGE",
      "REFERENCE",
      "TOTAL",
      "INTERVAL_COL",
      "CLASSIFICATION",
      "YEAR_COL",
      "MONTH_COL",
      "PRICE_PER_KM"
  FROM MAINTENANCE
  JOIN CLASSIFICATION ON CLASSIFICATION.ID_CLASSIFICATION = MAINTENANCE.ID_CLASSIFICATION
  JOIN CARS ON CARS.ID_CAR = MAINTENANCE.ID_CAR
  JOIN CALENDAR ON CALENDAR.DATE_COL = MAINTENANCE.DATE_COL    
  ORDER BY MAINTENANCE.DATE_COL DESC
/
CREATE OR REPLACE FORCE VIEW  "MAINTENANCE_STAT" ("DKN", "REFERENCE", "LAST_MLG", "PERIOD_IN_KM", "LAST_DATE", "PERIOD_IN_DAYS", "CNT", "SUM_INTERVAL", "AVG_INTERVAL_DAYS", "AVG_TOTAL", "STDDEV_INTERVAL", "STDDEV_TOTAL", "TOTAL") AS 
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
    ORDER BY REFERENCE, DKN, LAST_MLG DESC
/
CREATE OR REPLACE FORCE VIEW  "MAINTENANCE_TIMESERIES_STAT" ("ID_MAINTENANCE", "ID_CAR", "DKN", "REFERENCE", "DATE_COL", "PREV_DATE", "INTERVAL_DAYS", "MILEAGE", "PREV_MLG", "INTERVAL_KM", "CURRENT_MLG") AS 
  SELECT
    ID_MAINTENANCE,
    m.ID_CAR,
    DKN,
    REFERENCE,
    DATE_COL,
    LEAD(DATE_COL,1) OVER (PARTITION BY m.ID_CAR, REFERENCE ORDER BY DATE_COL DESC) PREV_DATE,
    DATE_COL - LEAD(DATE_COL,1) OVER (PARTITION BY m.ID_CAR, REFERENCE ORDER BY DATE_COL DESC) AS "INTERVAL_DAYS",
                MILEAGE,
                LEAD(MILEAGE,1) OVER (PARTITION BY m.ID_CAR, REFERENCE ORDER BY DATE_COL DESC) PREV_MLG,
    INTERVAL_COL AS "INTERVAL_KM",
                (SELECT MAX(KM) FROM FUEL WHERE ID_CAR = m.ID_CAR) - m.MILEAGE as CURRENT_MLG
  FROM MAINTENANCE m
  JOIN CARS c ON c.ID_CAR = m.ID_CAR
  ORDER BY DATE_COL DESC
/
CREATE OR REPLACE FORCE VIEW  "MILEAGE_STAT" ("YEAR", "MILEAGE", "AVG_MILEAGE", "STDDEV_MLG") AS 
  SELECT 
    YEAR,
    SUM(MILEAGE) as Mileage,
    round(avg(MILEAGE),2) AS avg_Mileage,
    round(STDDEV(MILEAGE),2) as STDDEV_MLG
FROM (
    SELECT
        YEAR_COL as YEAR,
        SUM(MILEAGE) AS MILEAGE
        FROM FUEL
        GROUP BY YEAR_COL, MONTH_COL
        ORDER BY YEAR)
GROUP BY YEAR
ORDER BY YEAR
/
CREATE OR REPLACE FORCE VIEW  "NEXT_REFUEL" ("ID_CAR", "DKN", "PREVIOUS_DATE", "PREDICTED_DATE", "EXPECTED_PERIOD", "KLM", "KM", "PREDICTED_KM") AS 
  SELECT
        DISTINCT mx.ID_CAR,
        DKN,
        MAX_DATE AS PREVIOUS_DATE,
        MAX_DATE+ROUND(AMOUNT/PER_DIEM,0) AS PREDICTED_DATE,
        ROUND(AMOUNT/PER_DIEM,0) AS EXPECTED_PERIOD,
        FUEL_CONSUMPTION,
        MAX_KM AS KM,
        MAX_KM + ROUND(AMOUNT/FUEL_CONSUMPTION*100,0) as PREDICTED_KM
        FROM
            (SELECT 
                ID_CAR,
                MAX(KM) as MAX_KM,
                MAX(DATE_COL) as MAX_DATE
                FROM FUEL
                GROUP BY ID_CAR) mx
            JOIN
            (SELECT 
                ID_CAR,
                KM,
                AMOUNT
                FROM FUEL) kms
            ON mx.ID_CAR = kms.ID_CAR
            JOIN
            (SELECT 
                ID_CAR,
                ROUND(SUM(AMOUNT)/SUM(PERIOD),2) as PER_DIEM,
                ROUND(SUM(AMOUNT)/SUM(MILEAGE)*100,2) as FUEL_CONSUMPTION
                FROM FUEL
                WHERE DATE_COL > SYSDATE-120
                AND PERIOD != 0
                AND MILEAGE IS NOT NULL
                GROUP BY ID_CAR
            ) prdm 
            ON prdm.ID_CAR = mx.ID_CAR
            JOIN CARS ON mx.ID_CAR = CARS.ID_CAR
        WHERE mx.MAX_KM = kms.KM
        AND mx.ID_CAR = kms.ID_CAR
        AND CARS.ACTIVE=1
/
CREATE OR REPLACE FORCE VIEW  "V_FUEL_CONSUMPTION_REPORT" ("year", "month", "MAKE", "MODEL", "DKN", "AMOUNT", "MILEAGE", "KPL") AS 
  SELECT
        CALENDAR.YEAR_COL as "year"
        ,CALENDAR.MONTH_COL as "month"
        ,make
        ,model
        ,dkn
        ,sum(AMOUNT) as amount
        ,sum(MILEAGE) as mileage
        ,round(sum(AMOUNT)/sum(MILEAGE)*100,2) as kpl
    FROM
        FUEL  
    JOIN
        CARS       ON FUEL.ID_CAR = CARS.ID_CAR
    JOIN
        CALENDAR   ON CALENDAR.DATE_COL = FUEL.DATE_COL
    GROUP by CALENDAR.YEAR_COL, CALENDAR.MONTH_COL, make, model, dkn  
    order by CALENDAR.YEAR_COL DESC, CALENDAR.MONTH_COL
/
CREATE OR REPLACE FORCE VIEW  "V_FUEL_CONS_PER_DRVTYPE" ("YEAR", "MONTH", "DKN", "DRIVE_TYPE", "TOTAL", "AMOUNT", "MILEAGE", "l/100km") AS 
  SELECT
    YEAR_COL as YEAR,
    MONTH_COL as MONTH,
    DKN,
    DRIVE_TYPE,
    SUM(TOTAL) as TOTAL,
    SUM(AMOUNT) as AMOUNT,
    SUM(MILEAGE) as MILEAGE,
    ROUND(SUM(AMOUNT) / SUM(MILEAGE) * 100,2) as "l/100km"
    FROM FUEL
    JOIN DRIVE_TYPE ON FUEL.ID_DRIVE_TYPE = DRIVE_TYPE.ID_DRIVE_TYPE
    JOIN CARS ON FUEL.ID_CAR = CARS.ID_CAR
    GROUP BY YEAR_COL, MONTH_COL, DKN, DRIVE_TYPE
    ORDER BY YEAR_COL DESC,
    MONTH_COL ASC
/
CREATE OR REPLACE FORCE VIEW  "V_FUEL_DST_FROM_AVERAGE" ("YEAR", "MONTH", "DST_AMOUNT", "DST_MILEAGE", "DST_TOTAL") AS 
  SELECT
    YEAR_COL AS "YEAR"
    ,MONTH_COL AS "MONTH"
    ,ROUND((SUM(AMOUNT) - (SELECT AVG_AMOUNT FROM V_FUEL_MONTHLY_STATS vfms WHERE VFMS."MONTH" = f.MONTH_COL)) / (SELECT STD_AMOUNT FROM V_FUEL_MONTHLY_STATS vfms WHERE VFMS."MONTH" = f.MONTH_COL),2) AS DST_AMOUNT
    ,ROUND((SUM(MILEAGE) - (SELECT AVG_MILEAGE FROM V_FUEL_MONTHLY_STATS vfms WHERE VFMS."MONTH" = f.MONTH_COL)) / (SELECT STD_MILEAGE FROM V_FUEL_MONTHLY_STATS vfms WHERE VFMS."MONTH" = f.MONTH_COL),2) AS DST_MILEAGE
    ,ROUND((SUM(TOTAL) - (SELECT AVG_TOTAL FROM V_FUEL_MONTHLY_STATS vfms WHERE VFMS."MONTH" = f.MONTH_COL)) / (SELECT STD_TOTAL FROM V_FUEL_MONTHLY_STATS vfms WHERE VFMS."MONTH" = f.MONTH_COL),2) AS DST_TOTAL
  FROM FUEL f
  GROUP BY YEAR_COL, MONTH_COL
  ORDER BY YEAR_COL DESC, MONTH_COL
/
CREATE OR REPLACE FORCE VIEW  "V_FUEL_MONTHLY_STATS" ("MONTH", "AVG_AMOUNT", "STD_AMOUNT", "AVG_MILEAGE", "STD_MILEAGE", "AVG_TOTAL", "STD_TOTAL") AS 
  SELECT
    "MONTH"	
    ,ROUND(AVG(AMOUNT),3) AS AVG_AMOUNT
    ,ROUND(STDDEV(AMOUNT),3) AS STD_AMOUNT
    ,ROUND(AVG(MILEAGE),3) AS AVG_MILEAGE
    ,ROUND(STDDEV(MILEAGE),3) AS STD_MILEAGE
    ,ROUND(AVG(TOTAL),3) AS AVG_TOTAL
    ,ROUND(STDDEV(TOTAL),3) AS STD_TOTAL
  FROM 	(	SELECT
              YEAR_COL AS "YEAR"
              ,MONTH_COL AS "MONTH"
              ,SUM(AMOUNT) AS AMOUNT
              ,SUM(MILEAGE) AS MILEAGE
              ,SUM(TOTAL) AS TOTAL
          FROM FUEL f
          GROUP BY YEAR_COL, MONTH_COL
          ORDER BY YEAR_COL DESC, MONTH_COL	)
  GROUP BY "MONTH"
  ORDER BY "MONTH"
/
CREATE OR REPLACE FORCE VIEW  "V_FUEL_PRICES_AVG_12_MONTHS" ("YEAR_COL", "MONTH", "MAX FUEL PRICE", "MIN FUEL PRICE", "AVG FUEL PRICE", "MEDIAN FUEL PRICE", "STDDEV FUEL PRICE") AS 
  SELECT 
     CALENDAR.YEAR_COL,     
     CALENDAR.MONTH_COL AS "MONTH",
     ROUND(MAX(PRICE),2) AS "MAX FUEL PRICE", 
     ROUND(MIN(PRICE),2) AS "MIN FUEL PRICE",
     ROUND(AVG(PRICE),2) AS "AVG FUEL PRICE",
     ROUND(MEDIAN(PRICE),2) AS "MEDIAN FUEL PRICE",
     ROUND(STDDEV(PRICE),2) AS "STDDEV FUEL PRICE"
     FROM
         (SELECT 
            DATE_COL
            ,CASE 
                WHEN CURRENCY=2 THEN PRICE/1.95583
                ELSE PRICE 
            END AS "PRICE"
          FROM FUEL
          WHERE DATE_COL > add_months( trunc(sysdate, 'MM'), -12 )) f
     JOIN CALENDAR ON CALENDAR.DATE_COL = f.DATE_COL
     GROUP BY CALENDAR.MONTH_COL, CALENDAR.YEAR_COL      
     ORDER BY CALENDAR.YEAR_COL, CALENDAR.MONTH_COL
/
CREATE OR REPLACE FORCE VIEW  "V_FUEL_PRICES_BY_YEAR" ("YEAR", "AVG FUEL PRICE", "MEDIAN FUEL PRICE", "STDDEV FUEL PRICE", "MIN FUEL PRICE", "MAX FUEL PRICE") AS 
  SELECT 
            CALENDAR.YEAR_COL as "YEAR",
            ROUND(AVG(CASE WHEN CURRENCY = 2 THEN price/1.95583 ELSE price end),2) AS "AVG FUEL PRICE",
            ROUND(MEDIAN(CASE WHEN CURRENCY = 2 THEN price/1.95583 ELSE price end),2) AS "MEDIAN FUEL PRICE",
            ROUND(STDDEV(CASE WHEN CURRENCY = 2 THEN price/1.95583 ELSE price end),2) AS "STDDEV FUEL PRICE",
            ROUND(MIN(CASE WHEN CURRENCY = 2 THEN price/1.95583 ELSE price end),2) as "MIN FUEL PRICE",
            ROUND(MAX(CASE WHEN CURRENCY = 2 THEN price/1.95583 ELSE price end),2) as "MAX FUEL PRICE"
        FROM FUEL
        JOIN CALENDAR ON CALENDAR.DATE_COL = FUEL.DATE_COL
        group by    CALENDAR.YEAR_COL
        ORDER BY    CALENDAR.YEAR_COL DESC
/
CREATE OR REPLACE FORCE VIEW  "V_MAINTENANCE_CAR_REPORT" ("DKN", "REFERENCE", "AVG INTERVAl", "AVG PERIOD") AS 
  SELECT
        DKN,
        REFERENCE,
        ROUND(avg(INTERVAL_COL),0) as "AVG INTERVAl",
        ROUND(AVG(INTERVAL_DAYS),0) AS "AVG PERIOD"
    FROM MAINTENANCE
    JOIN CARS ON CARS.ID_CAR = MAINTENANCE.ID_CAR
    group by DKN, REFERENCE
    ORDER BY DKN DESC, REFERENCE
/
CREATE OR REPLACE FORCE VIEW  "V_SUPPLIER_REPORT" ("FUEL BRAND", "MILEAGE", "Fuel Price", "Amount", "l/100 km", "cost per km", "URBAN", "Extra URBAN", "COUNTRY") AS 
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
                AMOUNT AS amt,
                CASE 
                    WHEN CURRENCY = 2 THEN ROUND(TOTAL/1.95583,2) 
                    WHEN CURRENCY = 1 THEN TOTAL 
                END AS ttl,
                CASE WHEN ID_DRIVE_TYPE = 1 THEN MILEAGE END AS urb,
                CASE WHEN ID_DRIVE_TYPE = 2 THEN MILEAGE END AS exurb,
                CASE WHEN ID_DRIVE_TYPE = 3 THEN MILEAGE END AS cmb
            FROM FUEL
            JOIN SUPPLIER_FUELS ON SUPPLIER_FUELS.ID_BRAND = FUEL.ID_BRAND) t
        GROUP BY fname
        HAVING SUM(MLG) >0
        ORDER BY SUM(MLG) DESC
/
CREATE OR REPLACE FORCE VIEW  "V_TCO" ("DKN", "MILEAGE", "AMOUNT", "F_TOTAL", "M_TOTAL", "SUM", "KM", "PRICE_PER_KM", "ACTIVE") AS 
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
    LEFT JOIN
    (select 
        ID_CAR,
        SUM(TOTAL) as m_total
    from MAINTENANCE
    group by ID_CAR) m ON f.ID_CAR = m.ID_CAR
    JOIN CARS ON CARS.ID_CAR = f.ID_CAR
    ORDER BY ACTIVE DESC, DKN
/
