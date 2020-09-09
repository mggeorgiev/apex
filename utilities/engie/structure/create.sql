CREATE TABLE  "ENGIE" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"TSTAMP" TIMESTAMP (6), 
	"CLIENT_NUMBER" NUMBER, 
	"PEAK_CONSUMPTION" NUMBER, 
	"OFF_PEAK_CONSUMPTION" NUMBER, 
	"YEAR" NUMBER, 
	"MONTH" NUMBER, 
	"DAY" NUMBER, 
	"WEEKDAY" NUMBER, 
	 CONSTRAINT "ENGIE_PK" PRIMARY KEY ("ID") ENABLE
   )
/

CREATE OR REPLACE TRIGGER  "BI_ENGIE" 
  before insert on "ENGIE"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "ENGIE_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_ENGIE" ENABLE
/