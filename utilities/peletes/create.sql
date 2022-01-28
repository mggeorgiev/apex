CREATE TABLE  "PELETES" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(50), 
	"KG" NUMBER, 
	"ENERGY" NUMBER, 
	 CONSTRAINT "PELETES_PK1" PRIMARY KEY ("ID") ENABLE
   )
/

CREATE OR REPLACE TRIGGER  "BI_PELETES" 
  before insert on "PELETES"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "PELETES_SEQ1".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_PELETES" ENABLE
/

CREATE TABLE  "HT_PELETES" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"PRODUCT_ID" NUMBER, 
	"PRICE" NUMBER, 
	"DATECOL" DATE, 
	"APARTMENT_ID" NUMBER, 
	"CURRENCY" NUMBER, 
	"PACKS" NUMBER, 
	 CONSTRAINT "PELETES_PK" PRIMARY KEY ("ID") ENABLE
   )
/
ALTER TABLE  "HT_PELETES" ADD CONSTRAINT "HT_PELETES_CURRENCY_FK" FOREIGN KEY ("CURRENCY")
	  REFERENCES  "CURRENCIES" ("ID") ON DELETE SET NULL ENABLE
/
ALTER TABLE  "HT_PELETES" ADD CONSTRAINT "HT_PELETES_PELETES_FK" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES  "PELETES" ("ID") ON DELETE SET NULL ENABLE
/
ALTER TABLE  "HT_PELETES" ADD CONSTRAINT "PELETES_APARTMENT_FK" FOREIGN KEY ("APARTMENT_ID")
	  REFERENCES  "APARTMENTS" ("AP_ID") ON DELETE SET NULL ENABLE
/

CREATE OR REPLACE TRIGGER  "BI_HT_PELETES" 
  before insert on "HT_PELETES"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "PELETES_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end;

/
ALTER TRIGGER  "BI_HT_PELETES" ENABLE
/


Table
Data
Indexes
Model
Constraints
Grants
Statistics
UI Defaults
Triggers
Dependencies
SQL

CREATE TABLE  "APARTMENTS" 
   (	"AP_ID" NUMBER NOT NULL ENABLE, 
	"POSTCODE" NUMBER, 
	"BUILDING_ID" NUMBER, 
	"AP_NUM" NUMBER, 
	"CITY_ID" NUMBER, 
	"ADRESS" NVARCHAR2(255), 
	 CONSTRAINT "APARTMENTS_PK" PRIMARY KEY ("AP_ID") ENABLE
   )
/
ALTER TABLE  "APARTMENTS" ADD CONSTRAINT "APARTMENTS_FK2" FOREIGN KEY ("CITY_ID")
	  REFERENCES  "CITY" ("CITY_ID") ENABLE
/

CREATE OR REPLACE TRIGGER  "APARTMENTS_T1" BEFOREinsert on "APARTMENTS"for each row WHEN (new.AP_ID IS NULL) begin
  SELECT TO_NUMBER(CONCAT(CONCAT(:new.POSTCODE,:new.BUILDING_ID),:new.AP_NUM))
  INTO :new.AP_ID
  FROM dual;
end;
/
ALTER TRIGGER  "APARTMENTS_T1" ENABLE
/

CREATE TABLE  "CURRENCIES" 
   (	"ID" NUMBER, 
	"CURRENCY" VARCHAR2(50), 
	 CONSTRAINT "CURRENCIES_PK" PRIMARY KEY ("ID") ENABLE
   )
/

CREATE OR REPLACE TRIGGER  "BI_CURRENCIES" 
  before insert on "CURRENCIES"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "CURRENCIES_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_CURRENCIES" ENABLE
/