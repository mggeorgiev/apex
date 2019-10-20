--------------------------------------------------------
--  File created - Sunday-October-20-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CLASSIFICATION
--------------------------------------------------------

  CREATE TABLE "CARS"."CLASSIFICATION" 
   (	"ID_CLASSIFICATION" NUMBER, 
	"CLASSIFICATION" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_5814722197993291" ;
REM INSERTING into CARS.CLASSIFICATION
SET DEFINE OFF;
Insert into CARS.CLASSIFICATION (ID_CLASSIFICATION,CLASSIFICATION) values (1,'Администрация');
Insert into CARS.CLASSIFICATION (ID_CLASSIFICATION,CLASSIFICATION) values (2,'Резервни части');
Insert into CARS.CLASSIFICATION (ID_CLASSIFICATION,CLASSIFICATION) values (3,'Консумативи');
Insert into CARS.CLASSIFICATION (ID_CLASSIFICATION,CLASSIFICATION) values (4,'Финанси');
Insert into CARS.CLASSIFICATION (ID_CLASSIFICATION,CLASSIFICATION) values (5,'Oil');
Insert into CARS.CLASSIFICATION (ID_CLASSIFICATION,CLASSIFICATION) values (6,'Ремонт');
Insert into CARS.CLASSIFICATION (ID_CLASSIFICATION,CLASSIFICATION) values (7,'Обслужване');
--------------------------------------------------------
--  DDL for Index CLASSIFICATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CARS"."CLASSIFICATION_PK" ON "CARS"."CLASSIFICATION" ("ID_CLASSIFICATION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_5814722197993291" ;
--------------------------------------------------------
--  DDL for Trigger BI_CLASSIFICATION
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CARS"."BI_CLASSIFICATION" 
  before insert on "CLASSIFICATION"               
  for each row  
begin   
  if :NEW."ID_CLASSIFICATION" is null then 
    select "ARTICULES_SEQ".nextval into :NEW."ID_CLASSIFICATION" from dual; 
  end if; 
end; 

/
ALTER TRIGGER "CARS"."BI_CLASSIFICATION" ENABLE;
--------------------------------------------------------
--  Constraints for Table CLASSIFICATION
--------------------------------------------------------

  ALTER TABLE "CARS"."CLASSIFICATION" ADD CONSTRAINT "CLASSIFICATION_PK" PRIMARY KEY ("ID_CLASSIFICATION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_5814722197993291"  ENABLE;
  ALTER TABLE "CARS"."CLASSIFICATION" MODIFY ("ID_CLASSIFICATION" NOT NULL ENABLE);