CREATE TABLE "CARS"."FUEL" 
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
	 CONSTRAINT "FUEL_PK" PRIMARY KEY ("ID_FUEL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_5814722197993291"  ENABLE, 
	 CONSTRAINT "FUEL_FK_CAR" FOREIGN KEY ("ID_CAR")
	  REFERENCES "CARS"."CARS" ("ID_CAR") ENABLE, 
	 CONSTRAINT "FUEL_FK_FBRAND" FOREIGN KEY ("ID_BRAND")
	  REFERENCES "CARS"."SUPPLIER_FUELS" ("ID_BRAND") ENABLE, 
	 CONSTRAINT "FUEL_FK_DRIVETYPE" FOREIGN KEY ("ID_DRIVE_TYPE")
	  REFERENCES "CARS"."DRIVE_TYPE" ("ID_DRIVE_TYPE") ENABLE, 
	 CONSTRAINT "FUEL_FK_CALENDAR" FOREIGN KEY ("DATE_COL")
	  REFERENCES "CARS"."CALENDAR" ("DATE_COL") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_5814722197993291";