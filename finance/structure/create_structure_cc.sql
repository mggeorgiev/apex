CREATE TABLE  "CC_CLASSIFICATION" 
   (	"ID_CLASSIFICATION" NUMBER NOT NULL ENABLE, 
	"CLASSIFICATION_COL" VARCHAR2(100), 
	 CONSTRAINT "CC_CLASSIFICATION_PK" PRIMARY KEY ("ID_CLASSIFICATION") ENABLE
   )  ENABLE ROW MOVEMENT
/
CREATE TABLE  "CC_CLASSIFIER" 
   (	"ID_CONTRAGENT" NUMBER NOT NULL ENABLE, 
	"ID_TYPE" NUMBER, 
	"ID_CLASSIFICATION" NUMBER, 
	 CONSTRAINT "CC_CLASSIFIER_PK" PRIMARY KEY ("ID_CONTRAGENT") ENABLE
   )
/
CREATE TABLE  "CC_CONTRAGENTS" 
   (	"CONTRAGENT_ID" NUMBER NOT NULL ENABLE, 
	"LEGAL_NAME" VARCHAR2(100), 
	"CONTRAGENT_COL" VARCHAR2(100), 
	"ID_CONTRAGENT" NUMBER, 
	 CONSTRAINT "CONTRAGENTS_PK" PRIMARY KEY ("CONTRAGENT_ID") ENABLE
   )  ENABLE ROW MOVEMENT
/
CREATE TABLE  "CC_TYPE" 
   (	"ID_TYPE" NUMBER NOT NULL ENABLE, 
	"TYPE_COL" VARCHAR2(100), 
	 CONSTRAINT "CC_TYPE_PK" PRIMARY KEY ("ID_TYPE") ENABLE
   )
/
CREATE TABLE  "WEEKDAYS" 
   (	"ID_WEEKDAY" NUMBER, 
	"WEEKDAY_NAME" VARCHAR2(50), 
	"WEEKDAY_BG" VARCHAR2(50), 
	 CONSTRAINT "WEEKDAYS_PK" PRIMARY KEY ("ID_WEEKDAY") ENABLE
   )
/
CREATE TABLE  "CC_CREDIT_CARD" 
   (	"reference" VARCHAR2(255) NOT NULL ENABLE, 
	"date_time" DATE, 
	"value_date" DATE, 
	"debit" NUMBER(38,2), 
	"credit" NUMBER(38,2), 
	"trname" VARCHAR2(500), 
	"contragent" VARCHAR2(500), 
	"rem_i" VARCHAR2(500), 
	"rem_ii" VARCHAR2(500), 
	"rem_iii" VARCHAR2(500), 
	"YEAR_CC" NUMBER, 
	"MONTH_CC" NUMBER, 
	"DAY_CC" NUMBER, 
	"ID_WEEKDAY" NUMBER, 
	"PERIOD" NUMBER, 
	"ID_CONTRAGENT" NUMBER, 
	"ID_TYPE" NUMBER, 
	"ID_CLASSIFICATION" NUMBER, 
	 CONSTRAINT "CC_CREDIT_CARD_CON" PRIMARY KEY ("reference") ENABLE
   )  ENABLE ROW MOVEMENT
/
CREATE TABLE  "CC_CREDIT_CARD_PRE" 
   (	"reference" VARCHAR2(255) NOT NULL ENABLE, 
	"datetime" VARCHAR2(50), 
	"valuedate" VARCHAR2(50), 
	"debit" VARCHAR2(50), 
	"credit" VARCHAR2(50), 
	"trname" VARCHAR2(500), 
	"contragent" VARCHAR2(500), 
	"rem_i" VARCHAR2(500), 
	"rem_ii" VARCHAR2(500), 
	"rem_iii" VARCHAR2(500), 
	 CONSTRAINT "credit_card_PK" PRIMARY KEY ("reference") ENABLE
   )  ENABLE ROW MOVEMENT
/
ALTER TABLE  "CC_CONTRAGENTS" ADD CONSTRAINT "CC_CONTRAGENTS_CON" FOREIGN KEY ("ID_CONTRAGENT")
	  REFERENCES  "CC_CLASSIFIER" ("ID_CONTRAGENT") ON DELETE SET NULL ENABLE
/
ALTER TABLE  "CC_CREDIT_CARD" ADD CONSTRAINT "CC_CREDIT_CARD_CC_CLASS_FK" FOREIGN KEY ("ID_CLASSIFICATION")
	  REFERENCES  "CC_CLASSIFICATION" ("ID_CLASSIFICATION") ENABLE
/
ALTER TABLE  "CC_CREDIT_CARD" ADD CONSTRAINT "CC_CREDIT_CARD_CC_CONTRAG_FK" FOREIGN KEY ("ID_CONTRAGENT")
	  REFERENCES  "CC_CONTRAGENTS" ("CONTRAGENT_ID") DISABLE
/
ALTER TABLE  "CC_CREDIT_CARD" ADD CONSTRAINT "CC_CREDIT_CARD_CC_TYPE_FK" FOREIGN KEY ("ID_TYPE")
	  REFERENCES  "CC_TYPE" ("ID_TYPE") ENABLE
/
ALTER TABLE  "CC_CREDIT_CARD" ADD CONSTRAINT "CC_CREDIT_CARD_WEEKDAYS_FK" FOREIGN KEY ("ID_WEEKDAY")
	  REFERENCES  "WEEKDAYS" ("ID_WEEKDAY") ENABLE
/
CREATE OR REPLACE FUNCTION  "CUSTOM_HASH" (p_username in varchar2, p_password in varchar2)
return varchar2
is
  l_password varchar2(4000);
  l_salt varchar2(4000) := '6AZC3H3LIIR0UYT44ZOG8SSCVCXMMK';begin

-- This function should be wrapped, as the hash algorhythm is exposed here.
-- You can change the value of l_salt or the method of which to call the
-- DBMS_OBFUSCATOIN toolkit, but you much reset all of your passwords
-- if you choose to do this.

l_password := utl_raw.cast_to_raw(dbms_obfuscation_toolkit.md5
  (input_string => p_password || substr(l_salt,10,13) || p_username ||    substr(l_salt, 4,10)));
return l_password;
end;
/

CREATE INDEX  "CC_CONTRAGENTS_IDX1" ON  "CC_CONTRAGENTS" ("CONTRAGENT_ID", "ID_CONTRAGENT", "CONTRAGENT_COL", "LEGAL_NAME")
/
CREATE INDEX  "CC_CREDIT_CARD_IDX_CREDIT" ON  "CC_CREDIT_CARD" ("date_time", "credit", "contragent", "ID_CONTRAGENT")
/
CREATE INDEX  "CC_CREDIT_CARD_IDX_DEBIT" ON  "CC_CREDIT_CARD" ("date_time", "debit", "contragent", "ID_CONTRAGENT")
/
CREATE UNIQUE INDEX  "WEEKDAYS_IDX1" ON  "WEEKDAYS" ("ID_WEEKDAY", "WEEKDAY_NAME", "WEEKDAY_BG")
/
CREATE OR REPLACE PROCEDURE  "EXPORT_CC_AFTRER" (after_date IN VARCHAR2)
is
   tempTable CC_CREDIT_CARD%ROWTYPE;
begin
	SELECT * INTO tempTable FROM FINANCE.CC_CREDIT_CARD
	WHERE "date_time" > TO_DATE(after_date, 'YYYY-MM-DD')	ORDER BY "date_time";end;
/

 CREATE SEQUENCE   "CREDIT_CARD_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "CREDIT_CARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "CONTRAGENTS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1933 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "CC_TYPE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
/

CREATE OR REPLACE TRIGGER  "CC_CONTRAGENTS_CLASSIFIER_T1" 
BEFORE
insert or update on "CC_CONTRAGENTS"
for each row
begin
INSERT INTO FINANCE.CC_CLASSIFIER (ID_CONTRAGENT)
    select :new.ID_CONTRAGENT
    from DUAL
    WHERE NOT EXISTS(select ID_CONTRAGENT 
                     from FINANCE.CC_CLASSIFIER 
                     where (ID_CONTRAGENT= :new.ID_CONTRAGENT));
end;

/
ALTER TRIGGER  "CC_CONTRAGENTS_CLASSIFIER_T1" DISABLE
/
CREATE OR REPLACE TRIGGER  "BI_credit_card" 
  before insert on "CC_CREDIT_CARD_PRE"              
  for each row 
begin  
  if :NEW."reference" is null then
    select "CREDIT_CARD_SEQ".nextval into :NEW."reference" from dual;
  end if;
end;

/
ALTER TRIGGER  "BI_credit_card" ENABLE
/

CREATE OR REPLACE TRIGGER  "BI_CONTRAGENTS" 
  before insert on "CC_CONTRAGENTS" 
  for each row 
  begin
    if :NEW."CONTRAGENT_ID" is null then
      select "CONTRAGENTS_SEQ".nextval into :NEW."CONTRAGENT_ID" from dual;
    end if;
end; 
/
ALTER TRIGGER  "BI_CONTRAGENTS" ENABLE
/
CREATE OR REPLACE TRIGGER  "BI_CC_TYPE" 
  before insert on "CC_TYPE"               
  for each row  
begin   
  if :NEW."ID_TYPE" is null then 
    select "CC_TYPE_SEQ".nextval into :NEW."ID_TYPE" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_CC_TYPE" ENABLE
/
CREATE OR REPLACE FORCE VIEW  "CC_BALANCE" ("Year", "tax", "bonus", "balance") AS 
  SELECT
         YEAR_CC AS "Year",
         SUM("debit") as "tax",
         SUM("credit") AS "bonus",
         SUM("credit") - SUM("debit") AS "balance"
      from
          CC_CREDIT_CARD
      WHERE
          "trname" = 'Бонус точки'
      OR
          "trname" = 'Такси картови операции'
      OR
          "trname" = 'Лихви кредитни карти'
      GROUP BY YEAR_CC
      order by YEAR_CC desc
/

CREATE OR REPLACE FORCE VIEW  "CC_CONTRAGENTS_EMP" ("CONTRAGENT_ID", "LEGAL_NAME", "CONTRAGENT_COL", "ID_CONTRAGENT") AS 
  SELECT
        "CONTRAGENT_ID",
        "LEGAL_NAME",
        "CONTRAGENT_COL",
        "ID_CONTRAGENT"
        FROM CC_CONTRAGENTS
        WHERE CONTRAGENT_COL IS NULL
        OR ID_CONTRAGENT IS NULL
        ORDER BY ID_CONTRAGENT DESC, CONTRAGENT_ID DESC, LEGAL_NAME
/

CREATE OR REPLACE FORCE VIEW  "CC_EMPTY_ID_CONTRAGENT" ("contragent") AS 
  SELECT "contragent" FROM FINANCE.CC_CREDIT_CARD WHERE ID_CONTRAGENT IS NULL AND "contragent" IS NOT NULL
/
CREATE OR REPLACE FORCE VIEW  "CC_LOG" ("reference", "date_time", "value_date", "debit", "credit", "trname", "contragent", "rem_i", "rem_ii", "rem_iii", "YEAR_CC", "MONTH_CC", "DAY_CC", "WEEKDAY_BG", "PERIOD", "ID_CONTRAGENT", "TYPE_COL", "CLASSIFICATION_COL") AS 
  SELECT          
        "reference",              
        "date_time",             
        "value_date",             
        "debit",             
        "credit",             
        "trname",             
        "contragent",             
        "rem_i",             
        "rem_ii",             
        "rem_iii",              
        "YEAR_CC",             
        "MONTH_CC",              
        "DAY_CC",             
        "WEEKDAY_BG",             
        "PERIOD",             
        "ID_CONTRAGENT",             
        "TYPE_COL",            
        "CLASSIFICATION_COL"        
    FROM CC_CREDIT_CARD        
    JOIN FINANCE.WEEKDAYS ON CC_CREDIT_CARD.ID_WEEKDAY = WEEKDAYS.ID_WEEKDAY        
    JOIN CC_TYPE ON CC_CREDIT_CARD.ID_TYPE = CC_TYPE.ID_TYPE        
    JOIN CC_CLASSIFICATION ON CC_CREDIT_CARD.ID_CLASSIFICATION = CC_CLASSIFICATION.ID_CLASSIFICATION        
    ORDER BY "date_time" DESC, "value_date" DESC
/
CREATE OR REPLACE FORCE VIEW  "CC_SORT" ("reference", "date_time", "value_date", "debit", "credit", "trname", "contragent", "rem_i", "rem_ii", "rem_iii", "YEAR_CC", "MONTH_CC", "DAY_CC", "ID_WEEKDAY", "PERIOD", "ID_CONTRAGENT", "ID_TYPE", "ID_CLASSIFICATION") AS 
  SELECT          
        "reference","date_time","value_date","debit","credit","trname","contragent","rem_i","rem_ii","rem_iii","YEAR_CC","MONTH_CC","DAY_CC","ID_WEEKDAY","PERIOD","ID_CONTRAGENT","ID_TYPE","ID_CLASSIFICATION"        
    FROM CC_CREDIT_CARD            
    ORDER BY "date_time" DESC, "value_date" DESC
/
CREATE OR REPLACE FORCE VIEW  "CONTRAGENTS_EMP" ("CONTRAGENT_ID", "LEGAL_NAME", "CONTRAGENT_COL", "ID_CONTRAGENT", "ID_CLASSIFICATION", "ID_TYPE") AS 
  SELECT 
	"CONTRAGENT_ID",
	"LEGAL_NAME",
	"CONTRAGENT_COL",
	FINANCE.CC_CONTRAGENTS.ID_CONTRAGENT,
	FINANCE.CC_CLASSIFIER."ID_CLASSIFICATION",
	FINANCE.CC_CLASSIFIER."ID_TYPE" 
FROM FINANCE.CC_CONTRAGENTS
JOIN FINANCE.CC_CLASSIFIER ON FINANCE.CC_CLASSIFIER.ID_CONTRAGENT = FINANCE.CC_CONTRAGENTS.ID_CONTRAGENT
WHERE FINANCE.CC_CONTRAGENTS.ID_CONTRAGENT IS NULL
OR FINANCE.CC_CLASSIFIER."ID_CLASSIFICATION" IS NULL
OR FINANCE.CC_CLASSIFIER."ID_TYPE" IS NULL
ORDER BY ID_CONTRAGENT DESC, CONTRAGENT_ID DESC, ID_CLASSIFICATION DESC, ID_TYPE DESC, LEGAL_NAME
/
CREATE OR REPLACE FORCE VIEW  "CREDIT_CARD_FREQUENCY" ("CONTRAGENT", "#", "AVG_INTERVAL", "AVG_DEBIT", "MEDIAN_DEBIT", "STDDEV_DEBIT") AS 
  SELECT
    cc.CONTRAGENT_COL CONTRAGENT,
    COUNT(c.ID_CONTRAGENT) as "#",
    ROUND(AVG(INTERVAL_DAYS),0) as "AVG_INTERVAL",
    ROUND(AVG(DEBIT),2) as "AVG_DEBIT", ROUND(MEDIAN(DEBIT),2) as "MEDIAN_DEBIT", ROUND(STDDEV(DEBIT),2) as "STDDEV_DEBIT"
    FROM
        (SELECT
            "value_date"
            ,ID_CONTRAGENT
            ,LEAD("value_date",1) OVER (PARTITION BY ID_CONTRAGENT ORDER BY "value_date" DESC) PREV_DATE
            ,"value_date" - LEAD("value_date",1) OVER (PARTITION BY ID_CONTRAGENT ORDER BY "value_date" DESC) AS "INTERVAL_DAYS"
            ,"debit" as DEBIT
            FROM CC_CREDIT_CARD
         ) c
    JOIN 
        (SELECT DISTINCT ID_CONTRAGENT, CONTRAGENT_COL FROM CC_CONTRAGENTS) cc
    ON c.ID_CONTRAGENT = cc.ID_CONTRAGENT
    GROUP BY cc.CONTRAGENT_COL
    ORDER BY "#" DESC
/
CREATE OR REPLACE FORCE VIEW  "CREDIT_CARD_MONTHLY_STATS" ("MONTH_CC", "MIN_SUM_DEBIT", "AVG_SUM_DEBIT", "MEDIAN_SUM_DEBIT", "MAX_SUM_DEBIT", "STDDEV_SUM_DEBIT", "MIN_SUM_CREDIT", "AVG_SUM_CREDIT", "MEDIAN_SUM_CREDIT", "MAX_SUM_CREDIT", "STDDEV_SUM_CREDIT") AS 
  SELECT
    MONTH_CC,
    MIN(SUM_DEBIT) AS MIN_SUM_DEBIT,
    round(avg(SUM_DEBIT),2) as AVG_SUM_DEBIT,
    round(MEDIAN(SUM_DEBIT),2) as MEDIAN_SUM_DEBIT,
    MAX(SUM_DEBIT) AS MAX_SUM_DEBIT,
    round(STDDEV(SUM_DEBIT),2) as STDDEV_SUM_DEBIT,
    MIN(SUM_CREDIT) AS MIN_SUM_CREDIT,
    round(avg(SUM_CREDIT),2) as AVG_SUM_CREDIT,
    round(MEDIAN(SUM_CREDIT),2) as MEDIAN_SUM_CREDIT,
    MAX(SUM_CREDIT) AS MAX_SUM_CREDIT,
    round(STDDEV(SUM_CREDIT),2) as STDDEV_SUM_CREDIT
    FROM
    (
        SELECT
                YEAR_CC,
                MONTH_CC,
                SUM("debit") as SUM_DEBIT,
                SUM("credit") as SUM_CREDIT
            FROM CC_CREDIT_CARD
            GROUP BY YEAR_CC, MONTH_CC
            ORDER BY YEAR_CC DESC
        )
GROUP BY MONTH_CC
ORDER BY MONTH_CC
/
CREATE OR REPLACE FORCE VIEW  "CREDIT_CARD_STAT_CONTRAGENT" ("CONTRAGENT_COL", "DEBIT", "AVG_debit", "CNT", "AVG_INTERVAL", "TOTAL_INTERVAL") AS 
  SELECT
	CONTRAGENT_COL,
	SUM(debit) AS DEBIT,
	ROUND(AVG(debit),2) AS "AVG_debit",
	COUNT(CONTRAGENT_COL) AS CNT,
	--DATE_SINCE_LAST,
	ROUND(AVG(DATE_INTERVAL),0) AS AVG_INTERVAL,
	SUM(DATE_INTERVAL) AS TOTAL_INTERVAL
	FROM
(SELECT          
        "reference",
        "date_time",
        "value_date",
        "debit" AS "DEBIT",
        "credit",
        "trname",
        "contragent",
        "rem_i",
        "rem_ii",
        "rem_iii",
        "YEAR_CC",
        "MONTH_CC",
        "DAY_CC",
        w.WEEKDAY_NAME,
        "PERIOD",
        "CONTRAGENT_COL",
        ct.TYPE_COL,
        cl.CLASSIFICATION_COL,
        LAG("value_date",1) OVER (PARTITION BY cc.ID_CONTRAGENT ORDER BY "value_date" DESC) - "value_date" AS "DATE_INTERVAL",
        SYSDATE - "value_date" AS DATE_SINCE_LAST
    FROM FINANCE.CC_CREDIT_CARD cc
	JOIN FINANCE.CC_TYPE ct ON ct.ID_TYPE = cc.ID_TYPE
	JOIN FINANCE.CC_CLASSIFICATION cl ON cl.ID_CLASSIFICATION = cc.ID_CLASSIFICATION
	JOIN FINANCE.WEEKDAYS w ON w.ID_WEEKDAY = cc.ID_WEEKDAY
	JOIN 
		(SELECT 
			DISTINCT ID_CONTRAGENT, 
					CONTRAGENT_COL AS CONTRAGENT_COL 
			FROM FINANCE.CC_CONTRAGENTS) con ON con.ID_CONTRAGENT = cc.ID_CONTRAGENT
    ORDER BY "date_time" DESC, "value_date" DESC) ccj
   	GROUP BY CONTRAGENT_COL
   ORDER BY DEBIT DESC, CNT DESC, CONTRAGENT_COL
/
CREATE OR REPLACE FORCE VIEW  "CREDIT_CARD_STAT_MONTH" ("YEAR", "MONTH", "TRANSACTION #", "AVG Debit", "AVG Credit", "STDDEV Debit", "STDDEV Credit", "SUM Debit", "SUM Credit", "Balance", "TTL_AVG") AS 
  SELECT
    YEAR_CC AS "YEAR",
    MONTH_CC AS "MONTH",
    count("debit") AS "TRANSACTION #",
    ROUND(AVG("debit"),2) as "AVG Debit",
    ROUND(AVG("credit"),2) as "AVG Credit",
    ROUND(STDDEV("debit"),2) as "STDDEV Debit",
    ROUND(STDDEV("credit"),2) as "STDDEV Credit",
    SUM(NVL("debit",0))*-1 as "SUM Debit",
    SUM(nvl("credit",0)) as "SUM Credit",
    SUM(nvl("credit",0)) - SUM(NVL("debit",0)) AS "Balance",
    (SELECT AVG_SUM_DEBIT FROM CREDIT_CARD_MONTHLY_STATS WHERE CREDIT_CARD_MONTHLY_STATS.MONTH_CC = CC_CREDIT_CARD.MONTH_CC) - SUM(NVL("debit",0)) as TTL_AVG
FROM
    FINANCE.CC_CREDIT_CARD
GROUP BY YEAR_CC, MONTH_CC
ORDER BY YEAR_CC DESC, MONTH_CC
/

CREATE OR REPLACE FORCE VIEW  "CREDIT_CARD_STAT_PERIOD" ("YEAR", "PERIOD", "TRANSACTION #", "AVG Debit", "AVG Credit", "STDDEV Debit", "STDDEV Credit", "SUM Debit", "SUM Credit") AS 
  SELECT
        YEAR_CC as "YEAR",
        "PERIOD",
        count("debit") AS "TRANSACTION #",
        ROUND(AVG("debit"),2) as "AVG Debit",
        ROUND(AVG("credit"),2) as "AVG Credit",
        ROUND(STDDEV("debit"),2) as "STDDEV Debit",
        ROUND(STDDEV("credit"),2) as "STDDEV Credit",
        SUM("debit") as "SUM Debit",
        SUM("credit") as "SUM Credit"
    FROM
        CC_CREDIT_CARD
        GROUP BY YEAR_CC, "PERIOD"
        ORDER BY YEAR_CC DESC, "PERIOD"
/

CREATE OR REPLACE FORCE VIEW  "CREDIT_CARD_STAT_YEAR" ("YEAR", "TRANSACTION #", "AVG Debit", "AVG Credit", "AVG Monthly Debit", "STDDEV Debit", "STDDEV Credit", "SUM Debit", "SUM Credit", "Balance") AS 
  SELECT YEAR_CC AS "YEAR",
	COUNT("debit") AS "TRANSACTION #",
	ROUND(AVG("debit"),2) as "AVG Debit",
	ROUND(SUM("debit")/COUNT("debit"),2) as "AVG Monthly Debit",
	ROUND(AVG("credit"),2) as "AVG Credit",
	ROUND(STDDEV("debit"),2) as "STDDEV Debit",
	ROUND(STDDEV("credit"),2) as "STDDEV Credit",
	SUM(nvl("debit",0)) *-1 as "SUM Debit",
	SUM(Nvl("credit",0)) as "SUM Credit",
	SUM(NVL("credit",0)) - SUM(nvl("debit",0)) as "Balance"
FROM
	FINANCE.CC_CREDIT_CARD
GROUP BY YEAR_CC
ORDER BY YEAR_CC DESC
/

CREATE OR REPLACE FORCE VIEW  "CREDIT_CARD_TYPE_YEAR" ("YEAR", "TYPE", "TRANSACTION #", "SUM Debit", "AVG Debit", "AVG Monthly Debit", "STDDEV Debit") AS 
  SELECT
      YEAR_CC AS "YEAR",
      ct.TYPE_COL as "TYPE",
      COUNT("debit") AS "TRANSACTION #",
      SUM(nvl("debit",0)) as "SUM Debit",
      ROUND(AVG("debit"),2) as "AVG Debit",
      ROUND(SUM("debit")/COUNT("debit"),2) as "AVG Monthly Debit",
      ROUND(STDDEV("debit"),2) as "STDDEV Debit"
    FROM CC_CREDIT_CARD c
    JOIN CC_CLASSIFIER clas ON clas.ID_CONTRAGENT = c.ID_CONTRAGENT
    JOIN CC_TYPE ct on ct.ID_TYPE = clas.ID_TYPE
    GROUP BY YEAR_CC, ct.TYPE_COL
    ORDER BY YEAR_CC DESC, "SUM Debit" DESC
/

create or replace procedure "ETL_CREDIT_CARD"
is
begin

--remove existing
    DELETE FROM 
        CC_CREDIT_CARD_PRE
    WHERE "reference" IN (SELECT "reference" FROM CC_CREDIT_CARD);

--Insert data from export to production
    INSERT INTO
		CC_CREDIT_CARD
		("reference",
		"date_time",
		"value_date",
		"debit",
		"credit",
		"trname",
		"contragent",
		"rem_i",
		"rem_ii",
		"rem_iii",
		"YEAR_CC",
		"MONTH_CC",
		"DAY_CC",
		"ID_WEEKDAY",
        "PERIOD")
	SELECT
		"reference",
		TO_DATE("datetime", 'dd/mm/yyyy'),
		TO_DATE("valuedate", 'dd/mm/yyyy'),
		TO_NUMBER("debit"),
		TO_NUMBER("credit"),
		"trname",
		"contragent",
		"rem_i",
		"rem_ii",
		"rem_iii",
		EXTRACT(YEAR FROM TO_DATE("valuedate", 'dd/mm/yyyy')),
		EXTRACT(MONTH FROM TO_DATE("valuedate", 'dd/mm/yyyy')),
		EXTRACT(DAY FROM TO_DATE("valuedate", 'dd/mm/yyyy')),
		TO_NUMBER(TO_CHAR(TO_DATE("valuedate", 'dd/mm/yyyy'), 'd')),	
		CASE
			WHEN EXTRACT(DAY FROM TO_DATE("datetime", 'dd/mm/yyyy')) > 19 THEN 	
				(CASE 
					WHEN EXTRACT(MONTH FROM TO_DATE("datetime", 'dd/mm/yyyy')) = 12 THEN 1
					ELSE EXTRACT(MONTH FROM TO_DATE("datetime", 'dd/mm/yyyy')) + 1 END)
			ELSE EXTRACT(MONTH FROM TO_DATE("datetime", 'dd/mm/yyyy'))
		END		
	FROM CC_CREDIT_CARD_PRE;

    --Enrich data
    
    --Update Classification
    FOR Lcntr IN 1..5 LOOP
        UPDATE CC_CREDIT_CARD
            SET ID_CLASSIFICATION = Lcntr
        WHERE ID_CLASSIFICATION IS NULL
        AND "contragent" 
        IN (SELECT LEGAL_NAME FROM CC_CONTRAGENTS where ID_CLASSIFICATION = Lcntr);
    END LOOP;
    
    --Update
    
    UPDATE CC_CREDIT_CARD
        SET "contragent" = "trname"
        WHERE "trname" = 'Лихви кредитни карти'
        AND "contragent" IS NULL;

    -- UPDATE FOREIGN KEYS 
    UPDATE CC_CREDIT_CARD
        SET 
            ID_CONTRAGENT = (SELECT ID_CONTRAGENT FROM CC_CONTRAGENTS WHERE CC_CONTRAGENTS.LEGAL_NAME = "contragent"),
            ID_TYPE = (SELECT ID_TYPE FROM CC_CLASSIFIER WHERE CC_CLASSIFIER.ID_CONTRAGENT = CC_CREDIT_CARD.ID_CONTRAGENT),
            ID_CLASSIFICATION = (SELECT ID_CLASSIFICATION FROM CC_CLASSIFIER WHERE CC_CLASSIFIER.ID_CONTRAGENT = CC_CREDIT_CARD.ID_CONTRAGENT)
        WHERE ID_TYPE IS NULL
        AND   ID_CONTRAGENT IS NULL
        AND   ID_CLASSIFICATION IS NULL;

--delete imported
    DELETE FROM 
        CC_CREDIT_CARD_PRE
    WHERE "reference" IN (SELECT "reference" FROM CC_CREDIT_CARD);

end;
