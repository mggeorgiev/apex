CREATE TABLE  "ENTRANCE" 
   (	"ENTRANCE_ID" NUMBER NOT NULL ENABLE, 
	"ENTRANCE_NAME" VARCHAR2(45) DEFAULT NULL, 
	 PRIMARY KEY ("ENTRANCE_ID") ENABLE
   )
/
CREATE TABLE  "HA" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"NAME" NVARCHAR2(50), 
	 CONSTRAINT "HA_PK" PRIMARY KEY ("ID") ENABLE
   )
/
CREATE TABLE  "BUILDING" 
   (	"BUILDING_ID" NUMBER(*,0) NOT NULL ENABLE, 
	"BUILDING_NUM" NUMBER(*,0), 
	"ENTRANCE_ID" NUMBER(*,0), 
	"POST_CODE" NUMBER(*,0), 
	"HAID" NUMBER, 
	 CONSTRAINT "BUILDING_PK" PRIMARY KEY ("BUILDING_ID") ENABLE
   )
/
CREATE TABLE  "APARTMENTS" 
   (	"AP_ID" NUMBER NOT NULL ENABLE, 
	"AP_NUMBER" NUMBER(3,0), 
	"AP_FLOOR" NUMBER(*,0), 
	"IDEAL_PART" NUMBER, 
	"BUILDING_ID" NUMBER, 
	"ENTRANCE_ID" NUMBER, 
	 CONSTRAINT "APARTMENTS_PK" PRIMARY KEY ("AP_ID") ENABLE
   )
/
CREATE TABLE  "EXPENSE_50" 
   (	"IDEXPENSE_50" NUMBER NOT NULL ENABLE, 
	"EXPENSE_50" NUMBER(2,0) DEFAULT NULL, 
	"BUILDING_ID" NUMBER(3,0) DEFAULT NULL, 
	"ENTRANCE_ID" NUMBER(2,0) DEFAULT NULL, 
	"HABITANTS_ID" NUMBER DEFAULT NULL, 
	"AP_ID" NUMBER DEFAULT NULL, 
	 CONSTRAINT "EXPENSE_50" PRIMARY KEY ("IDEXPENSE_50") ENABLE
   )
/
CREATE TABLE  "APEX$_ACL" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"WS_APP_ID" NUMBER NOT NULL ENABLE, 
	"USERNAME" VARCHAR2(255) NOT NULL ENABLE, 
	"PRIV" VARCHAR2(1) NOT NULL ENABLE, 
	"CREATED_ON" DATE NOT NULL ENABLE, 
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, 
	"UPDATED_ON" DATE, 
	"UPDATED_BY" VARCHAR2(255), 
	 CONSTRAINT "APEX$_ACL_PRIV_CK" CHECK (priv in ('R','C','A')) ENABLE, 
	 CONSTRAINT "APEX$_ACL_PK" PRIMARY KEY ("ID") ENABLE
   )
/
CREATE TABLE  "APEX$_WS_ROWS" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"WS_APP_ID" NUMBER NOT NULL ENABLE, 
	"DATA_GRID_ID" NUMBER NOT NULL ENABLE, 
	"UNIQUE_VALUE" VARCHAR2(255), 
	"TAGS" VARCHAR2(4000), 
	"PARENT_ROW_ID" NUMBER, 
	"OWNER" VARCHAR2(255), 
	"GEOCODE" VARCHAR2(512), 
	"LOAD_ORDER" NUMBER, 
	"CHANGE_COUNT" NUMBER, 
	"CREATED_ON" DATE NOT NULL ENABLE, 
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, 
	"UPDATED_ON" DATE, 
	"UPDATED_BY" VARCHAR2(255), 
	"C001" VARCHAR2(4000), 
	"C002" VARCHAR2(4000), 
	"C003" VARCHAR2(4000), 
	"C004" VARCHAR2(4000), 
	"C005" VARCHAR2(4000), 
	"C006" VARCHAR2(4000), 
	"C007" VARCHAR2(4000), 
	"C008" VARCHAR2(4000), 
	"C009" VARCHAR2(4000), 
	"C010" VARCHAR2(4000), 
	"C011" VARCHAR2(4000), 
	"C012" VARCHAR2(4000), 
	"C013" VARCHAR2(4000), 
	"C014" VARCHAR2(4000), 
	"C015" VARCHAR2(4000), 
	"C016" VARCHAR2(4000), 
	"C017" VARCHAR2(4000), 
	"C018" VARCHAR2(4000), 
	"C019" VARCHAR2(4000), 
	"C020" VARCHAR2(4000), 
	"C021" VARCHAR2(4000), 
	"C022" VARCHAR2(4000), 
	"C023" VARCHAR2(4000), 
	"C024" VARCHAR2(4000), 
	"C025" VARCHAR2(4000), 
	"C026" VARCHAR2(4000), 
	"C027" VARCHAR2(4000), 
	"C028" VARCHAR2(4000), 
	"C029" VARCHAR2(4000), 
	"C030" VARCHAR2(4000), 
	"C031" VARCHAR2(4000), 
	"C032" VARCHAR2(4000), 
	"C033" VARCHAR2(4000), 
	"C034" VARCHAR2(4000), 
	"C035" VARCHAR2(4000), 
	"C036" VARCHAR2(4000), 
	"C037" VARCHAR2(4000), 
	"C038" VARCHAR2(4000), 
	"C039" VARCHAR2(4000), 
	"C040" VARCHAR2(4000), 
	"C041" VARCHAR2(4000), 
	"C042" VARCHAR2(4000), 
	"C043" VARCHAR2(4000), 
	"C044" VARCHAR2(4000), 
	"C045" VARCHAR2(4000), 
	"C046" VARCHAR2(4000), 
	"C047" VARCHAR2(4000), 
	"C048" VARCHAR2(4000), 
	"C049" VARCHAR2(4000), 
	"C050" VARCHAR2(4000), 
	"N001" NUMBER, 
	"N002" NUMBER, 
	"N003" NUMBER, 
	"N004" NUMBER, 
	"N005" NUMBER, 
	"N006" NUMBER, 
	"N007" NUMBER, 
	"N008" NUMBER, 
	"N009" NUMBER, 
	"N010" NUMBER, 
	"N011" NUMBER, 
	"N012" NUMBER, 
	"N013" NUMBER, 
	"N014" NUMBER, 
	"N015" NUMBER, 
	"N016" NUMBER, 
	"N017" NUMBER, 
	"N018" NUMBER, 
	"N019" NUMBER, 
	"N020" NUMBER, 
	"N021" NUMBER, 
	"N022" NUMBER, 
	"N023" NUMBER, 
	"N024" NUMBER, 
	"N025" NUMBER, 
	"N026" NUMBER, 
	"N027" NUMBER, 
	"N028" NUMBER, 
	"N029" NUMBER, 
	"N030" NUMBER, 
	"N031" NUMBER, 
	"N032" NUMBER, 
	"N033" NUMBER, 
	"N034" NUMBER, 
	"N035" NUMBER, 
	"N036" NUMBER, 
	"N037" NUMBER, 
	"N038" NUMBER, 
	"N039" NUMBER, 
	"N040" NUMBER, 
	"N041" NUMBER, 
	"N042" NUMBER, 
	"N043" NUMBER, 
	"N044" NUMBER, 
	"N045" NUMBER, 
	"N046" NUMBER, 
	"N047" NUMBER, 
	"N048" NUMBER, 
	"N049" NUMBER, 
	"N050" NUMBER, 
	"D001" DATE, 
	"D002" DATE, 
	"D003" DATE, 
	"D004" DATE, 
	"D005" DATE, 
	"D006" DATE, 
	"D007" DATE, 
	"D008" DATE, 
	"D009" DATE, 
	"D010" DATE, 
	"D011" DATE, 
	"D012" DATE, 
	"D013" DATE, 
	"D014" DATE, 
	"D015" DATE, 
	"D016" DATE, 
	"D017" DATE, 
	"D018" DATE, 
	"D019" DATE, 
	"D020" DATE, 
	"D021" DATE, 
	"D022" DATE, 
	"D023" DATE, 
	"D024" DATE, 
	"D025" DATE, 
	"D026" DATE, 
	"D027" DATE, 
	"D028" DATE, 
	"D029" DATE, 
	"D030" DATE, 
	"D031" DATE, 
	"D032" DATE, 
	"D033" DATE, 
	"D034" DATE, 
	"D035" DATE, 
	"D036" DATE, 
	"D037" DATE, 
	"D038" DATE, 
	"D039" DATE, 
	"D040" DATE, 
	"D041" DATE, 
	"D042" DATE, 
	"D043" DATE, 
	"D044" DATE, 
	"D045" DATE, 
	"D046" DATE, 
	"D047" DATE, 
	"D048" DATE, 
	"D049" DATE, 
	"D050" DATE, 
	"CLOB001" CLOB, 
	"SEARCH_CLOB" CLOB, 
	 CONSTRAINT "APEX$_WS_ROWS_PK" PRIMARY KEY ("ID") ENABLE, 
	 CONSTRAINT "APEX$_WS_ROWS_UK1" UNIQUE ("WS_APP_ID", "DATA_GRID_ID", "UNIQUE_VALUE") ENABLE
   )
/
CREATE TABLE  "APEX$_WS_FILES" 
   (	"ID" NUMBER, 
	"WS_APP_ID" NUMBER NOT NULL ENABLE, 
	"DATA_GRID_ID" NUMBER, 
	"ROW_ID" NUMBER, 
	"WEBPAGE_ID" NUMBER, 
	"COMPONENT_LEVEL" VARCHAR2(30), 
	"NAME" VARCHAR2(255) NOT NULL ENABLE, 
	"IMAGE_ALIAS" VARCHAR2(255), 
	"IMAGE_ATTRIBUTES" VARCHAR2(255), 
	"CONTENT" BLOB, 
	"CONTENT_LAST_UPDATE" DATE, 
	"MIME_TYPE" VARCHAR2(255) NOT NULL ENABLE, 
	"CONTENT_CHARSET" VARCHAR2(255), 
	"CONTENT_FILENAME" VARCHAR2(500), 
	"DESCRIPTION" VARCHAR2(4000), 
	"CREATED_ON" DATE NOT NULL ENABLE, 
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, 
	"UPDATED_ON" DATE, 
	"UPDATED_BY" VARCHAR2(255), 
	 CONSTRAINT "APEX$_WS_FILES_CL_CK" CHECK (component_level in ('WEBSHEET','ROW','WORKSPACE','WEBPAGE')) ENABLE, 
	 CONSTRAINT "APEX$_WS_FILES_PK" PRIMARY KEY ("ID") ENABLE
   )
/
CREATE TABLE  "APEX$_WS_HISTORY" 
   (	"ROW_ID" NUMBER NOT NULL ENABLE, 
	"WS_APP_ID" NUMBER NOT NULL ENABLE, 
	"DATA_GRID_ID" NUMBER NOT NULL ENABLE, 
	"COLUMN_NAME" VARCHAR2(255), 
	"OLD_VALUE" VARCHAR2(4000), 
	"NEW_VALUE" VARCHAR2(4000), 
	"APPLICATION_USER_ID" VARCHAR2(255), 
	"CHANGE_DATE" DATE
   )
/
CREATE TABLE  "APEX$_WS_LINKS" 
   (	"ID" NUMBER, 
	"WS_APP_ID" NUMBER NOT NULL ENABLE, 
	"DATA_GRID_ID" NUMBER, 
	"ROW_ID" NUMBER, 
	"WEBPAGE_ID" NUMBER, 
	"COMPONENT_LEVEL" VARCHAR2(30), 
	"TAGS" VARCHAR2(4000), 
	"SHOW_ON_HOMEPAGE" VARCHAR2(1), 
	"LINK_NAME" VARCHAR2(255) NOT NULL ENABLE, 
	"URL" VARCHAR2(4000) NOT NULL ENABLE, 
	"LINK_DESCRIPTION" VARCHAR2(4000), 
	"DISPLAY_SEQUENCE" NUMBER, 
	"CREATED_ON" DATE NOT NULL ENABLE, 
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, 
	"UPDATED_ON" DATE, 
	"UPDATED_BY" VARCHAR2(255), 
	 CONSTRAINT "APEX$_WS_LINKS_CL_CK" CHECK (component_level in ('WEBSHEET','ROW','WORKSPACE','WEBPAGE')) ENABLE, 
	 CONSTRAINT "APEX$_WS_LINKS_SH_CK" CHECK (show_on_homepage in ('Y','N')) ENABLE, 
	 CONSTRAINT "APEX$_WS_LINKS_PK" PRIMARY KEY ("ID") ENABLE
   )
/
CREATE TABLE  "APEX$_WS_NOTES" 
   (	"ID" NUMBER, 
	"WS_APP_ID" NUMBER NOT NULL ENABLE, 
	"DATA_GRID_ID" NUMBER, 
	"ROW_ID" NUMBER, 
	"WEBPAGE_ID" NUMBER, 
	"COMPONENT_LEVEL" VARCHAR2(30), 
	"CONTENT" CLOB, 
	"CREATED_ON" DATE NOT NULL ENABLE, 
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, 
	"UPDATED_ON" DATE, 
	"UPDATED_BY" VARCHAR2(255), 
	 CONSTRAINT "APEX$_WS_NOTES_CL_CK" CHECK (component_level in ('WEBSHEET','ROW','WORKSPACE','WEBPAGE')) ENABLE, 
	 CONSTRAINT "APEX$_WS_NOTES_PK" PRIMARY KEY ("ID") ENABLE
   )
/
CREATE TABLE  "APEX$_WS_TAGS" 
   (	"ID" NUMBER, 
	"WS_APP_ID" NUMBER NOT NULL ENABLE, 
	"DATA_GRID_ID" NUMBER, 
	"ROW_ID" NUMBER, 
	"WEBPAGE_ID" NUMBER, 
	"COMPONENT_LEVEL" VARCHAR2(30), 
	"TAG" VARCHAR2(4000), 
	"CREATED_ON" DATE NOT NULL ENABLE, 
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, 
	"UPDATED_ON" DATE, 
	"UPDATED_BY" VARCHAR2(255), 
	 CONSTRAINT "APEX$_WS_TAGS_CL_CK" CHECK (component_level in ('WEBSHEET','ROW','WORKSPACE','WEBPAGE')) ENABLE, 
	 CONSTRAINT "APEX$_WS_TAGS_PK" PRIMARY KEY ("ID") ENABLE
   )
/
CREATE TABLE  "APEX$_WS_WEBPG_SECTIONS" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"WS_APP_ID" NUMBER NOT NULL ENABLE, 
	"WEBPAGE_ID" NUMBER, 
	"DISPLAY_SEQUENCE" NUMBER, 
	"SECTION_TYPE" VARCHAR2(30) NOT NULL ENABLE, 
	"TITLE" VARCHAR2(4000), 
	"CONTENT" CLOB, 
	"CONTENT_UPPER" CLOB, 
	"NAV_START_WEBPAGE_ID" NUMBER, 
	"NAV_MAX_LEVEL" NUMBER, 
	"NAV_INCLUDE_LINK" VARCHAR2(1), 
	"DATA_GRID_ID" NUMBER, 
	"REPORT_ID" NUMBER, 
	"DATA_SECTION_STYLE" NUMBER, 
	"CHART_TYPE" VARCHAR2(255), 
	"CHART_3D" VARCHAR2(1), 
	"CHART_LABEL" VARCHAR2(255), 
	"LABEL_AXIS_TITLE" VARCHAR2(255), 
	"CHART_VALUE" VARCHAR2(255), 
	"VALUE_AXIS_TITLE" VARCHAR2(255), 
	"CHART_AGGREGATE" VARCHAR2(255), 
	"CHART_SORTING" VARCHAR2(255), 
	"CREATED_ON" DATE NOT NULL ENABLE, 
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, 
	"UPDATED_ON" DATE, 
	"UPDATED_BY" VARCHAR2(255), 
	"NAV_ORDER_BY" VARCHAR2(255), 
	"CHANGE_COUNT" NUMBER, 
	"SHOW_ADD_ROW" VARCHAR2(1) DEFAULT 'N', 
	"SHOW_EDIT_ROW" VARCHAR2(1) DEFAULT 'N', 
	"SHOW_SEARCH" VARCHAR2(1) DEFAULT 'Y', 
	"MAX_ROW_COUNT" NUMBER, 
	 CONSTRAINT "APEX$_WS_WEBPG_SECTION_LINK_CK" CHECK (nav_include_link in ('Y','N')) ENABLE, 
	 CONSTRAINT "APEX$_WS_WEBPG_SECTION_3D_CK" CHECK (chart_3d in ('Y','N')) ENABLE, 
	 CONSTRAINT "APEX$_WS_WEBPG_SECTIONS_PK" PRIMARY KEY ("ID") ENABLE, 
	 CONSTRAINT "APEX$_WS_WEBPG_SECTION_TYPE_CK" CHECK (section_type in ('TEXT','DATA','CHART','NAV_PAGE','NAV_SECTION','PLSQL')) ENABLE, 
	 CONSTRAINT "APEX$_WS_WEBPG_SECTION_AR_CK" CHECK (show_add_row in ('Y','N')) ENABLE, 
	 CONSTRAINT "APEX$_WS_WEBPG_SECTION_ER_CK" CHECK (show_edit_row in ('Y','N')) ENABLE, 
	 CONSTRAINT "APEX$_WS_WEBPG_SECTION_SER_CK" CHECK (show_search in ('Y','N')) ENABLE
   )
/
CREATE TABLE  "APEX$_WS_WEBPG_SECTION_HISTORY" 
   (	"SECTION_ID" NUMBER NOT NULL ENABLE, 
	"WS_APP_ID" NUMBER NOT NULL ENABLE, 
	"WEBPAGE_ID" NUMBER NOT NULL ENABLE, 
	"OLD_DISPLAY_SEQUENCE" NUMBER, 
	"NEW_DISPLAY_SEQUENCE" NUMBER, 
	"OLD_TITLE" VARCHAR2(4000), 
	"NEW_TITLE" VARCHAR2(4000), 
	"OLD_CONTENT" CLOB, 
	"NEW_CONTENT" CLOB, 
	"APPLICATION_USER_ID" VARCHAR2(255) NOT NULL ENABLE, 
	"CHANGE_DATE" DATE NOT NULL ENABLE
   )
/
CREATE TABLE  "ART50" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"MRZ" NUMBER, 
	"VALID_FROM" DATE, 
	"VALID_TILL" DATE, 
	 CONSTRAINT "ART50_PK" PRIMARY KEY ("ID") ENABLE
   )
/
CREATE TABLE  "CALC_METHOD" 
   (	"METHOD_ID" NUMBER NOT NULL ENABLE, 
	"METHOD_EXP" VARCHAR2(30), 
	 CONSTRAINT "CALC_METHOD_PK" PRIMARY KEY ("METHOD_ID") ENABLE
   )
/
CREATE TABLE  "EXPENSE_TYPE" 
   (	"IDEXPENCE_TYPE" NUMBER NOT NULL ENABLE, 
	"EXPENCE_TYPE" VARCHAR2(45) DEFAULT NULL, 
	 PRIMARY KEY ("IDEXPENCE_TYPE") ENABLE
   )
/
CREATE TABLE  "EXPENSES" 
   (	"IDEXPENCES" NUMBER NOT NULL ENABLE, 
	"BUILDING_ID" NUMBER DEFAULT NULL, 
	"ENTRANCE_ID" NUMBER DEFAULT NULL, 
	"IDPROVIDERS" NUMBER DEFAULT NULL, 
	"AMOUNT_EXP" NUMBER(10,0) DEFAULT NULL, 
	"DATE_EXP" DATE DEFAULT NULL, 
	"IDEXPENCE_TYPE" NUMBER DEFAULT NULL, 
	 CONSTRAINT "EXPENCES_COST_PRK" PRIMARY KEY ("IDEXPENCES") ENABLE
   )
/
CREATE TABLE  "SUPPLIER" 
   (	"ID_SUPPLIER" NUMBER NOT NULL ENABLE, 
	"SUPPLIER" VARCHAR2(255), 
	 CONSTRAINT "SUPPLIER_PK" PRIMARY KEY ("ID_SUPPLIER") ENABLE
   )
/
CREATE TABLE  "EXPENSES_LOG" 
   (	"ID" NUMBER, 
	"YEAR_EXP" NUMBER, 
	"MONTH_EXP" NUMBER, 
	"DATE_EXP" DATE, 
	"REFERENCE" VARCHAR2(30), 
	"ID_SUPPLIER" NUMBER, 
	"TOTAL" NUMBER, 
	"METHOD_ID" NUMBER, 
	"HABITANTS_NUMBER" NUMBER, 
	"HABITANTS" NUMBER, 
	"BUILDING_ID" NUMBER, 
	 CONSTRAINT "EXPENSES_LOG_PK" PRIMARY KEY ("ID") ENABLE
   )
/
CREATE TABLE  "EXPENSES_PRE" 
   (	"ID" NUMBER, 
	"ГОДИНА" NUMBER, 
	"МЕСЕЦ" NUMBER, 
	"ДАТА" DATE, 
	"НАИМЕНОВАНИЕ" VARCHAR2(30), 
	"ТЪРГОВЕЦ" VARCHAR2(30), 
	"СУМА" VARCHAR2(30), 
	"МЕТОД" VARCHAR2(30), 
	"БРОЙ_ЖИВ" NUMBER, 
	"НА_ЖИВ" VARCHAR2(30), 
	 CONSTRAINT "EXPENSES_PRE_PK" PRIMARY KEY ("ID") ENABLE
   )  ENABLE ROW MOVEMENT
/
CREATE TABLE  "ROLES" 
   (	"ROLE_ID" NUMBER NOT NULL ENABLE, 
	"ROLE_NAME" VARCHAR2(45) DEFAULT NULL, 
	 CONSTRAINT "ROLES_PRK" PRIMARY KEY ("ROLE_ID") ENABLE
   )
/
CREATE TABLE  "HABITANTS" 
   (	"FIRST_NAME" VARCHAR2(50) DEFAULT NULL, 
	"MIDDLE_NAME" VARCHAR2(50) DEFAULT NULL, 
	"LAST_NAME" VARCHAR2(50) DEFAULT NULL, 
	"EGN" NUMBER DEFAULT NULL, 
	"AP_ID" NUMBER DEFAULT NULL, 
	"BUILDING_ID" NUMBER DEFAULT NULL, 
	"HABITANTS_ID" NUMBER NOT NULL ENABLE, 
	"ROLE_ID" NUMBER DEFAULT NULL, 
	"ID_HOUSEHOLD" NUMBER DEFAULT NULL, 
	"VALID_FROM" DATE DEFAULT NULL, 
	"VALID_TILL" DATE DEFAULT NULL, 
	 PRIMARY KEY ("HABITANTS_ID") ENABLE
   )  ENABLE ROW MOVEMENT
/
CREATE TABLE  "HOUSEHOLDS" 
   (	"id_household" NUMBER NOT NULL ENABLE, 
	"HOUSEHOLD" VARCHAR2(100), 
	"BUILDING_ID" NUMBER, 
	"AP_ID" NUMBER, 
	"ACTIVE" NUMBER, 
	"VALID_FROM" DATE, 
	"VALID_TILL" DATE, 
	 CONSTRAINT "HOUSEHOLDS_PK" PRIMARY KEY ("id_household") ENABLE
   )  ENABLE ROW MOVEMENT
/
CREATE TABLE  "INCOME_LOG" 
   (	"ID" NUMBER, 
	"YEAR_INC" NUMBER, 
	"MONTH_INC" NUMBER, 
	"FLOOR_INC" NUMBER, 
	"AP_ID" NUMBER, 
	"BUILDING_ID" NUMBER, 
	"ID_HOUSEHOLD" NUMBER, 
	"AMOUNT" NUMBER, 
	"RIO" NUMBER, 
	"HAB_NUMBER" NUMBER, 
	"ART_51" NUMBER, 
	"MANAGEMENT_COST" NUMBER, 
	"ELECTR_ELEVATOR_AP" NUMBER, 
	"ELECTR_STAIRCASE_AP" NUMBER, 
	"TAX_ELEVATOR_AP" NUMBER, 
	"CLEANER_AP" NUMBER, 
	"RUN_COST_AP" NUMBER, 
	"BALANCE" NUMBER, 
	"ELECTR_ELEVATOR" NUMBER, 
	"ELECTR_STAIRCASE" NUMBER, 
	"TAX_ELEVATOR" NUMBER, 
	"CLEANER" NUMBER, 
	"RUN_COST" NUMBER, 
	"ID_COMPLEX" NUMBER, 
	"ENTRANCE_ID" NUMBER, 
	 CONSTRAINT "INCOME_LOG_PK" PRIMARY KEY ("ID") ENABLE
   )
/
CREATE TABLE  "INCOME_LOG_PRE" 
   (	"ID" NUMBER, 
	"ГОДИНА" NUMBER, 
	"МЕСЕЦ" NUMBER, 
	"ЕТ" NUMBER, 
	"АП" NUMBER, 
	"ФАМИЛИЯ" VARCHAR2(30), 
	"СУМА" VARCHAR2(30), 
	"РИО" VARCHAR2(30), 
	"БР_ЖИВ" VARCHAR2(30), 
	"ЧЛ_51" VARCHAR2(30), 
	"МЕНИДЖМЪНТ" VARCHAR2(10), 
	"ТОК_АСАНСЬОР_АП" VARCHAR2(30), 
	"ТОК_СТЪБЛИ_АП" VARCHAR2(30), 
	"ТАКСА_АС_АП" VARCHAR2(30), 
	"ЧИСТАЧКА_АП" VARCHAR2(30), 
	"ТЕК_РАЗХОДИ_АП" VARCHAR2(30), 
	"БАЛАНС" VARCHAR2(30), 
	"ТОК_АСАНСЬОР" VARCHAR2(30), 
	"ТОК_СТЪБЛИ" VARCHAR2(30), 
	"ТАКСА_АСАНСЬОР" VARCHAR2(30), 
	"ЧИСТАЧКА" VARCHAR2(30), 
	"ТЕК_РАЗХОДИ" VARCHAR2(30), 
	"ID_COMPLEX" NUMBER, 
	 CONSTRAINT "INCOME_LOG_PRE_PK" PRIMARY KEY ("ID") ENABLE
   )  ENABLE ROW MOVEMENT
/
CREATE TABLE  "NMW" 
   (	"ID" NUMBER, 
	"VALIDFROM" DATE, 
	"VALIDTILL" DATE, 
	"MONTHLY" NUMBER, 
	"HOURLY" NUMBER, 
	"ACT" VARCHAR2(30), 
	 CONSTRAINT "NMW_PK" PRIMARY KEY ("ID") ENABLE
   )
/
ALTER TABLE  "APARTMENTS" ADD CONSTRAINT "APARTMENTS_BUILDING_FK" FOREIGN KEY ("BUILDING_ID")
	  REFERENCES  "BUILDING" ("BUILDING_ID") ENABLE
/
ALTER TABLE  "APEX$_WS_FILES" ADD CONSTRAINT "APEX$_WS_FILES_FK" FOREIGN KEY ("ROW_ID")
	  REFERENCES  "APEX$_WS_ROWS" ("ID") ON DELETE CASCADE ENABLE
/
ALTER TABLE  "APEX$_WS_LINKS" ADD CONSTRAINT "APEX$_WS_LINKS_FK" FOREIGN KEY ("ROW_ID")
	  REFERENCES  "APEX$_WS_ROWS" ("ID") ON DELETE CASCADE ENABLE
/
ALTER TABLE  "APEX$_WS_NOTES" ADD CONSTRAINT "APEX$_WS_NOTES_FK" FOREIGN KEY ("ROW_ID")
	  REFERENCES  "APEX$_WS_ROWS" ("ID") ON DELETE CASCADE ENABLE
/
ALTER TABLE  "APEX$_WS_TAGS" ADD CONSTRAINT "APEX$_WS_TAGS_FK" FOREIGN KEY ("ROW_ID")
	  REFERENCES  "APEX$_WS_ROWS" ("ID") ON DELETE CASCADE ENABLE
/
ALTER TABLE  "BUILDING" ADD CONSTRAINT "BUILDING_ENTRANCE_FK" FOREIGN KEY ("ENTRANCE_ID")
	  REFERENCES  "ENTRANCE" ("ENTRANCE_ID") ENABLE
/
ALTER TABLE  "BUILDING" ADD CONSTRAINT "BUILDING_HA_FK" FOREIGN KEY ("HAID")
	  REFERENCES  "HA" ("ID") ON DELETE CASCADE ENABLE
/
ALTER TABLE  "EXPENSES" ADD CONSTRAINT "EXPENCES_BUILDING_FK" FOREIGN KEY ("BUILDING_ID")
	  REFERENCES  "BUILDING" ("BUILDING_ID") ENABLE
/
ALTER TABLE  "EXPENSES" ADD CONSTRAINT "EXPENCES_EXPENCE_TYPE_FK" FOREIGN KEY ("IDEXPENCE_TYPE")
	  REFERENCES  "EXPENSE_TYPE" ("IDEXPENCE_TYPE") ENABLE
/
ALTER TABLE  "EXPENSES_LOG" ADD CONSTRAINT "EXPENSES_LOG_CALC_METHOD_FK" FOREIGN KEY ("METHOD_ID")
	  REFERENCES  "CALC_METHOD" ("METHOD_ID") ENABLE
/
ALTER TABLE  "EXPENSES_LOG" ADD CONSTRAINT "EXPENSES_LOG_CON" FOREIGN KEY ("BUILDING_ID")
	  REFERENCES  "BUILDING" ("BUILDING_ID") ENABLE
/
ALTER TABLE  "EXPENSES_LOG" ADD CONSTRAINT "EXPENSES_LOG_SUPPLIER_FK" FOREIGN KEY ("ID_SUPPLIER")
	  REFERENCES  "SUPPLIER" ("ID_SUPPLIER") ENABLE
/
ALTER TABLE  "EXPENSE_50" ADD CONSTRAINT "EXPENSE_50_APARTMENTS_FK" FOREIGN KEY ("AP_ID")
	  REFERENCES  "APARTMENTS" ("AP_ID") ENABLE
/
ALTER TABLE  "HABITANTS" ADD CONSTRAINT "HABITANTS_APARTMENTS_FK" FOREIGN KEY ("AP_ID")
	  REFERENCES  "APARTMENTS" ("AP_ID") ENABLE
/
ALTER TABLE  "HABITANTS" ADD CONSTRAINT "HABITANTS_BUILDING_FK" FOREIGN KEY ("BUILDING_ID")
	  REFERENCES  "BUILDING" ("BUILDING_ID") ENABLE
/
ALTER TABLE  "HABITANTS" ADD CONSTRAINT "HABITANTS_CON" FOREIGN KEY ("ROLE_ID")
	  REFERENCES  "ROLES" ("ROLE_ID") ENABLE
/
ALTER TABLE  "HOUSEHOLDS" ADD CONSTRAINT "HOUSEHOLDS_CON" FOREIGN KEY ("BUILDING_ID")
	  REFERENCES  "BUILDING" ("BUILDING_ID") ENABLE
/
ALTER TABLE  "INCOME_LOG" ADD CONSTRAINT "INCOME_LOG_APARTMENTS_FK" FOREIGN KEY ("AP_ID")
	  REFERENCES  "APARTMENTS" ("AP_ID") ENABLE
/
ALTER TABLE  "INCOME_LOG" ADD CONSTRAINT "INCOME_LOG_CON" FOREIGN KEY ("BUILDING_ID")
	  REFERENCES  "BUILDING" ("BUILDING_ID") ENABLE
/
ALTER TABLE  "INCOME_LOG" ADD CONSTRAINT "INCOME_LOG_ENTRANCE_FK" FOREIGN KEY ("ENTRANCE_ID")
	  REFERENCES  "ENTRANCE" ("ENTRANCE_ID") ENABLE
/
ALTER TABLE  "INCOME_LOG" ADD CONSTRAINT "INCOME_LOG_HOUSEHOLDS_FK" FOREIGN KEY ("ID_HOUSEHOLD")
	  REFERENCES  "HOUSEHOLDS" ("id_household") ENABLE
/
CREATE OR REPLACE FUNCTION  "CUSTOM_HASH" (p_username in varchar2, p_password in varchar2)
return varchar2
is
  l_password varchar2(4000);
  l_salt varchar2(4000) := 'FGFXMPT5TDGZ53FYY04181PCY54U3C';
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

CREATE INDEX  "APEX$_ACL_IDX1" ON  "APEX$_ACL" ("WS_APP_ID")
/
CREATE INDEX  "APEX$_WS_FILES_IDX1" ON  "APEX$_WS_FILES" ("WS_APP_ID", "DATA_GRID_ID", "ROW_ID")
/
CREATE INDEX  "APEX$_WS_FILES_IDX2" ON  "APEX$_WS_FILES" ("WS_APP_ID", "WEBPAGE_ID")
/
CREATE INDEX  "APEX$_WS_HISTORY_IDX" ON  "APEX$_WS_HISTORY" ("WS_APP_ID", "DATA_GRID_ID", "ROW_ID")
/
CREATE INDEX  "APEX$_WS_LINKS_IDX1" ON  "APEX$_WS_LINKS" ("WS_APP_ID", "DATA_GRID_ID", "ROW_ID")
/
CREATE INDEX  "APEX$_WS_LINKS_IDX2" ON  "APEX$_WS_LINKS" ("WS_APP_ID", "WEBPAGE_ID")
/
CREATE INDEX  "APEX$_WS_NOTES_IDX1" ON  "APEX$_WS_NOTES" ("WS_APP_ID", "DATA_GRID_ID", "ROW_ID")
/
CREATE INDEX  "APEX$_WS_NOTES_IDX2" ON  "APEX$_WS_NOTES" ("WS_APP_ID", "WEBPAGE_ID")
/
CREATE INDEX  "APEX$_WS_ROWS_IDX" ON  "APEX$_WS_ROWS" ("WS_APP_ID", "DATA_GRID_ID")
/
CREATE INDEX  "APEX$_WS_TAGS_IDX1" ON  "APEX$_WS_TAGS" ("WS_APP_ID", "DATA_GRID_ID", "ROW_ID")
/
CREATE INDEX  "APEX$_WS_TAGS_IDX2" ON  "APEX$_WS_TAGS" ("WS_APP_ID", "WEBPAGE_ID")
/
CREATE INDEX  "APEX$_WS_WEBPG_SECHIST_IDX1" ON  "APEX$_WS_WEBPG_SECTION_HISTORY" ("WS_APP_ID", "WEBPAGE_ID", "SECTION_ID")
/
CREATE INDEX  "INCOME_LOG_IDX1" ON  "INCOME_LOG" ("BUILDING_ID", "ID", "ID_COMPLEX")
/
CREATE INDEX  "ROLES_IDX1" ON  "ROLES" ("ROLE_ID", "ROLE_NAME")
/
CREATE OR REPLACE PROCEDURE  "UPDATE_MRZ" is
begin
UPDATE EC.ART50 t1
   SET t1.VALID_TILL =
       (WITH ART50_lead AS (
       						SELECT 
       							ID,
       							tt.VALID_FROM AS vf,
								LEAD(VALID_FROM,1) OVER (ORDER BY VALID_FROM)-1 AS vt
                            FROM EC.ART50 tt)       
           SELECT t2.vt
           FROM ART50_lead t2
           WHERE t1.VALID_FROM = t2.vf 
          	AND t1.ID = t2.ID);
end;
/

 CREATE SEQUENCE   "NMW_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 181 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "INCOME_LOG_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 13532 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "INCOME_LOG_PRE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1323 NOCACHE  NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "HOUSEHOLDS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "HA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "EXPENSES_PRE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 583 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "DEMO_USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "ART50_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE
/
 CREATE SEQUENCE   "APEX$_WS_SEQ"  MINVALUE 100 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE
/
CREATE OR REPLACE TRIGGER  "bi_NMW" 
  before insert on "NMW"              
  for each row 
begin  
  if :new."ID" is null then
    select "NMW_SEQ".nextval into :new."ID" from sys.dual;
  end if;
end;

/
ALTER TRIGGER  "bi_NMW" ENABLE
/
CREATE OR REPLACE TRIGGER  "bi_EXPENSES_PRE"   
    before insert on "EXPENSES_PRE"                
    for each row
begin
    if :new."ID" is null then    
        select "EXPENSES_PRE_SEQ".nextval into :new."ID" from dual;
    end if;
end;
/
ALTER TRIGGER  "bi_EXPENSES_PRE" ENABLE
/
CREATE OR REPLACE TRIGGER  "INCOME_LOG_PRE_T1" 
BEFORE
insert on "INCOME_LOG_PRE"
for each row
begin

  SELECT INCOME_LOG_PRE_SEQ.NEXTVAL
  INTO   :new.id
  FROM   dual;
end;

/
ALTER TRIGGER  "INCOME_LOG_PRE_T1" ENABLE
/
CREATE OR REPLACE TRIGGER  "INCOME_BIR" 
BEFORE INSERT ON INCOME_LOG 
FOR EACH ROW

BEGIN
  SELECT income_log_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;

/
ALTER TRIGGER  "INCOME_BIR" ENABLE
/
CREATE OR REPLACE TRIGGER  "HABITANTS_HOUSEHOLDID" 
BEFORE insert on "HABITANTS"
for each row
begin
if :NEW.HABITANTS_ID is null then 
    select 
        MAX(HABITANTS_ID)+1 into :NEW.HABITANTS_ID 
    from HABITANTS
    WHERE BUILDING_ID = :NEW.BUILDING_ID
    AND AP_ID = :NEW.AP_ID; 
end if; 
end;

/
ALTER TRIGGER  "HABITANTS_HOUSEHOLDID" ENABLE
/
CREATE OR REPLACE TRIGGER  "EXPENSES_LOG_T1" 
BEFORE
insert or update or delete on "EXPENSES_LOG"
for each row
begin
begin  
  if :new."ID" is null then
    select "EXPENSES_PRE_SEQ".nextval into :new."ID" from dual;
  end if;
end;
end;

/
ALTER TRIGGER  "EXPENSES_LOG_T1" ENABLE
/
CREATE OR REPLACE TRIGGER  "BI_HOUSEHOLDS"   before insert on "HOUSEHOLDS"                 for each row    if :NEW."id_household" is null then     select "HOUSEHOLDS_SEQ".nextval into :NEW."id_household" from sys.dual;   end if; end; 
/
ALTER TRIGGER  "BI_HOUSEHOLDS" ENABLE
/
CREATE OR REPLACE TRIGGER  "BI_HA" 
  before insert on "HA"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "HA_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_HA" ENABLE
/
CREATE OR REPLACE TRIGGER  "BI_ART50" 
  before insert on "ART50"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "ART50_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_ART50" ENABLE
/
CREATE OR REPLACE TRIGGER  "APEX$_WS_WEBPG_SECTIONS_T1" 
before insert or update on "APEX$_WS_WEBPG_SECTIONS"
for each row
declare
    l_sequence_changed varchar2(1) := 'N';
    l_title_changed varchar2(1) := 'N';
    l_content_changed varchar2(1) := 'N';
    procedure clob_upper( p_content in clob, p_content_upper in out nocopy clob)
    is
    l_buf varchar2(32767);
    l_off number;
    l_amt number;
    begin
    if p_content is not null then
        l_amt := 8000;
        l_off := 1;
         sys.dbms_lob.trim( p_content_upper, 0);
         begin
             loop
                 sys.dbms_lob.read( p_content, l_amt, l_off, l_buf );
                 l_buf := upper( l_buf );
                 sys.dbms_lob.writeappend( p_content_upper, length(l_buf), l_buf);
                 l_off := l_off + l_amt;
                 l_amt := 8000;
             end loop;
         exception
             when no_data_found then null;
         end;
     end if;
end clob_upper;
begin
    --
    -- maintain pk and timestamps
    --
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from sys.dual;
    end if;
    if :new.section_type = 'NAV_PAGE' then
        if :new.nav_include_link is null then
            :new.nav_include_link := 'Y';
        end if;
    end if;
    if inserting and :new.content is not null then
        sys.dbms_lob.createtemporary( :new.content_upper, false, sys.dbms_lob.call );
        clob_upper( :new.content, :new.content_upper );
    elsif updating then
        if :new.content_upper is null then
            sys.dbms_lob.createtemporary( :new.content_upper, false, sys.dbms_lob.call );
        end if;
        clob_upper( :new.content, :new.content_upper );
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
        :new.change_count := 0;
    elsif updating then
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
        :new.change_count := nvl(:old.change_count,0) + 1;
        if nvl(:old.display_sequence,-999) != nvl(:new.display_sequence,-999) then
            l_sequence_changed := 'Y';
        end if;
        if nvl(:old.title,'jKKwZk') != nvl(:new.title,'jKKwZk') then
            l_title_changed := 'Y';
        end if;
        if sys.dbms_lob.compare(:new.content,:old.content) != 0 or nvl(length(:new.content),0) != nvl(length(:old.content),0) then
            l_content_changed := 'Y';
        end if;
        if l_sequence_changed = 'Y' or l_title_changed = 'Y' or l_content_changed = 'Y' then
            insert into apex$_ws_webpg_section_history (section_id, ws_app_id, webpage_id, old_display_sequence, new_display_sequence,
            old_title, new_title, old_content, new_content, change_date, application_user_id)
            values (:new.id, :new.ws_app_id, :new.webpage_id,
                    decode(l_sequence_changed,'Y',:old.display_sequence,null), decode(l_sequence_changed,'Y',:new.display_sequence,null),
                    decode(l_title_changed,'Y',:old.title,null), decode(l_title_changed,'Y',:new.title,null),
                    decode(l_content_changed,'Y',:old.content,null), decode(l_content_changed,'Y',:new.content,null), sysdate, nvl(v('APP_USER'),user));
        end if;
    end if;
end;
/
ALTER TRIGGER  "APEX$_WS_WEBPG_SECTIONS_T1" ENABLE
/
CREATE OR REPLACE TRIGGER  "APEX$_WS_ROWS_T1" 
before insert or update on "APEX$_WS_ROWS"
for each row

declare
    l_tag_list apex_application_global.vc_arr2;
    type col_arr is table of varchar2(32767) index by varchar2(255);
    la_col_label col_arr;
    procedure datagrid_logging( 
        p_row_id       in number,
        p_ws_app_id    in number,
        p_data_grid_id in number,
        p_col_name     in varchar2,
        p_type         in varchar2,
        p_old_c        in varchar2 default null,
        p_new_c        in varchar2 default null,
        p_old_d        in date default null,
        p_new_d        in date default null,
        p_old_n        in number default null,
        p_new_n        in number default null)
    is
    begin
        case p_type
        when 'C' then
          if (p_old_c is null and p_new_c is not null) or (p_old_c is not null and p_new_c is null) or (p_old_c != p_new_c) then
              insert into apex$_ws_history (row_id, ws_app_id, data_grid_id, column_name, old_value, new_value, change_date, application_user_id)
              values (p_row_id, p_ws_app_id, p_data_grid_id, p_col_name, p_old_c, p_new_c, sysdate, nvl(v('APP_USER'),user));
          end if;
        when 'D' then
          if (p_old_d is null and p_new_d is not null) or (p_old_d is not null and p_new_d is null) or (p_old_d != p_new_d) then
              insert into apex$_ws_history (row_id, ws_app_id, data_grid_id, column_name, old_value,  new_value, change_date, application_user_id)
              values (p_row_id, p_ws_app_id, p_data_grid_id, p_col_name, p_old_d, p_new_d, sysdate, nvl(v('APP_USER'),user));
        	  end if;
        when 'N' then
          if (p_old_n is null and p_new_n is not null) or (p_old_n is not null and p_new_n is null) or (p_old_n != p_new_n) then
              insert into apex$_ws_history (row_id, ws_app_id, data_grid_id, column_name, old_value,  new_value, change_date, application_user_id)
              values (p_row_id, p_ws_app_id, p_data_grid_id, p_col_name, p_old_n, p_new_n, sysdate, nvl(v('APP_USER'),user));
          end if;
        end case;
    end datagrid_logging;
    procedure wa( p_c in out nocopy clob, p_buf in varchar2 )
    is
    l_lf varchar2(2) := unistr('\000a');
    begin
    if p_buf is not null then sys.dbms_lob.writeappend( p_c, length(p_buf||l_lf), upper(p_buf)||l_lf); end if;
    end wa;
begin
    --
    -- maintain pk and timestamps
    --
    if inserting then
        if :new.id is null then
            select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from sys.dual;
        end if;
        
        -- manintain readable row key
        if :new.unique_value is null then
            :new.unique_value := apex_util.compress_int(apex$_ws_seq.nextval);
        end if;
        
        :new.created_on := sysdate;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.load_order from sys.dual;
        :new.change_count := 0;
    elsif updating then
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
        :new.change_count := :old.change_count + 1;
    end if;
    --
    -- inserting remove chr 13
    --
    if instr(:new.c001,chr(13)) > 0 then :new.c001 := replace(:new.c001,chr(13),null); end if;
    if instr(:new.c002,chr(13)) > 0 then :new.c002 := replace(:new.c002,chr(13),null); end if;
    if instr(:new.c003,chr(13)) > 0 then :new.c003 := replace(:new.c003,chr(13),null); end if;
    if instr(:new.c004,chr(13)) > 0 then :new.c004 := replace(:new.c004,chr(13),null); end if;
    if instr(:new.c005,chr(13)) > 0 then :new.c005 := replace(:new.c005,chr(13),null); end if;
    if instr(:new.c006,chr(13)) > 0 then :new.c006 := replace(:new.c006,chr(13),null); end if;
    if instr(:new.c007,chr(13)) > 0 then :new.c007 := replace(:new.c007,chr(13),null); end if;
    if instr(:new.c008,chr(13)) > 0 then :new.c008 := replace(:new.c008,chr(13),null); end if;
    if instr(:new.c009,chr(13)) > 0 then :new.c009 := replace(:new.c009,chr(13),null); end if;
    if instr(:new.c010,chr(13)) > 0 then :new.c010 := replace(:new.c010,chr(13),null); end if;
    if instr(:new.c011,chr(13)) > 0 then :new.c011 := replace(:new.c011,chr(13),null); end if;
    if instr(:new.c012,chr(13)) > 0 then :new.c012 := replace(:new.c012,chr(13),null); end if;
    if instr(:new.c013,chr(13)) > 0 then :new.c013 := replace(:new.c013,chr(13),null); end if;
    if instr(:new.c014,chr(13)) > 0 then :new.c014 := replace(:new.c014,chr(13),null); end if;
    if instr(:new.c015,chr(13)) > 0 then :new.c015 := replace(:new.c015,chr(13),null); end if;
    if instr(:new.c016,chr(13)) > 0 then :new.c016 := replace(:new.c016,chr(13),null); end if;
    if instr(:new.c017,chr(13)) > 0 then :new.c017 := replace(:new.c017,chr(13),null); end if;
    if instr(:new.c018,chr(13)) > 0 then :new.c018 := replace(:new.c018,chr(13),null); end if;
    if instr(:new.c019,chr(13)) > 0 then :new.c019 := replace(:new.c019,chr(13),null); end if;
    if instr(:new.c020,chr(13)) > 0 then :new.c020 := replace(:new.c010,chr(23),null); end if;
    if instr(:new.c021,chr(13)) > 0 then :new.c021 := replace(:new.c001,chr(23),null); end if;
    if instr(:new.c022,chr(13)) > 0 then :new.c022 := replace(:new.c002,chr(23),null); end if;
    if instr(:new.c023,chr(13)) > 0 then :new.c023 := replace(:new.c003,chr(23),null); end if;
    if instr(:new.c024,chr(13)) > 0 then :new.c024 := replace(:new.c004,chr(23),null); end if;
    if instr(:new.c025,chr(13)) > 0 then :new.c025 := replace(:new.c005,chr(23),null); end if;
    if instr(:new.c026,chr(13)) > 0 then :new.c026 := replace(:new.c006,chr(23),null); end if;
    if instr(:new.c027,chr(13)) > 0 then :new.c027 := replace(:new.c007,chr(23),null); end if;
    if instr(:new.c028,chr(13)) > 0 then :new.c028 := replace(:new.c008,chr(23),null); end if;
    if instr(:new.c029,chr(13)) > 0 then :new.c029 := replace(:new.c009,chr(23),null); end if;
    if instr(:new.c030,chr(13)) > 0 then :new.c030 := replace(:new.c030,chr(13),null); end if;
    if instr(:new.c031,chr(13)) > 0 then :new.c031 := replace(:new.c031,chr(13),null); end if;
    if instr(:new.c032,chr(13)) > 0 then :new.c032 := replace(:new.c032,chr(13),null); end if;
    if instr(:new.c033,chr(13)) > 0 then :new.c033 := replace(:new.c033,chr(13),null); end if;
    if instr(:new.c034,chr(13)) > 0 then :new.c034 := replace(:new.c034,chr(13),null); end if;
    if instr(:new.c035,chr(13)) > 0 then :new.c035 := replace(:new.c035,chr(13),null); end if;
    if instr(:new.c036,chr(13)) > 0 then :new.c036 := replace(:new.c036,chr(13),null); end if;
    if instr(:new.c037,chr(13)) > 0 then :new.c037 := replace(:new.c037,chr(13),null); end if;
    if instr(:new.c038,chr(13)) > 0 then :new.c038 := replace(:new.c038,chr(13),null); end if;
    if instr(:new.c039,chr(13)) > 0 then :new.c039 := replace(:new.c039,chr(13),null); end if;
    if instr(:new.c040,chr(13)) > 0 then :new.c040 := replace(:new.c040,chr(13),null); end if;
    if instr(:new.c041,chr(13)) > 0 then :new.c041 := replace(:new.c041,chr(13),null); end if;
    if instr(:new.c042,chr(13)) > 0 then :new.c042 := replace(:new.c042,chr(13),null); end if;
    if instr(:new.c043,chr(13)) > 0 then :new.c043 := replace(:new.c043,chr(13),null); end if;
    if instr(:new.c044,chr(13)) > 0 then :new.c044 := replace(:new.c044,chr(13),null); end if;
    if instr(:new.c045,chr(13)) > 0 then :new.c045 := replace(:new.c045,chr(13),null); end if;
    if instr(:new.c046,chr(13)) > 0 then :new.c046 := replace(:new.c046,chr(13),null); end if;
    if instr(:new.c047,chr(13)) > 0 then :new.c047 := replace(:new.c047,chr(13),null); end if;
    if instr(:new.c048,chr(13)) > 0 then :new.c048 := replace(:new.c048,chr(13),null); end if;
    if instr(:new.c049,chr(13)) > 0 then :new.c049 := replace(:new.c049,chr(13),null); end if;
    if instr(:new.c050,chr(13)) > 0 then :new.c050 := replace(:new.c050,chr(13),null); end if;
    if :new.search_clob is null then
        sys.dbms_lob.createtemporary( :new.search_clob, false, sys.dbms_lob.session );
    else
        sys.dbms_lob.trim( :new.search_clob, 0 );
    end if;
    wa(:new.search_clob,:new.c001);wa(:new.search_clob,:new.c002);wa(:new.search_clob,:new.c003);
    wa(:new.search_clob,:new.c004);wa(:new.search_clob,:new.c005);wa(:new.search_clob,:new.c006);
    wa(:new.search_clob,:new.c007);wa(:new.search_clob,:new.c008);wa(:new.search_clob,:new.c009);
    wa(:new.search_clob,:new.c010);wa(:new.search_clob,:new.c011);wa(:new.search_clob,:new.c012);
    wa(:new.search_clob,:new.c013);wa(:new.search_clob,:new.c014);wa(:new.search_clob,:new.c015);
    wa(:new.search_clob,:new.c016);wa(:new.search_clob,:new.c017);wa(:new.search_clob,:new.c018);
    wa(:new.search_clob,:new.c019);wa(:new.search_clob,:new.c020);wa(:new.search_clob,:new.c021);
    wa(:new.search_clob,:new.c022);wa(:new.search_clob,:new.c023);wa(:new.search_clob,:new.c024);
    wa(:new.search_clob,:new.c025);wa(:new.search_clob,:new.c026);wa(:new.search_clob,:new.c027);
    wa(:new.search_clob,:new.c028);wa(:new.search_clob,:new.c029);wa(:new.search_clob,:new.c030);
    wa(:new.search_clob,:new.c031);wa(:new.search_clob,:new.c032);wa(:new.search_clob,:new.c033);
    wa(:new.search_clob,:new.c034);wa(:new.search_clob,:new.c035);wa(:new.search_clob,:new.c036);
    wa(:new.search_clob,:new.c037);wa(:new.search_clob,:new.c038);wa(:new.search_clob,:new.c039);
    wa(:new.search_clob,:new.c040);wa(:new.search_clob,:new.c041);wa(:new.search_clob,:new.c042);
    wa(:new.search_clob,:new.c043);wa(:new.search_clob,:new.c044);wa(:new.search_clob,:new.c045);
    wa(:new.search_clob,:new.c046);wa(:new.search_clob,:new.c047);wa(:new.search_clob,:new.c048);
    wa(:new.search_clob,:new.c049);wa(:new.search_clob,:new.c050);
    --
    -- history
    --
    if updating then
       -- initialize column label array
       for i in 1..50
       loop
           la_col_label('C'||to_char(i,'FM009')) := null;
           la_col_label('N'||to_char(i,'FM009')) := null;
           la_col_label('D'||to_char(i,'FM009')) := null;
       end loop;
       -- get column label array
       for c1 in (select column_alias, report_label 
                  from apex_ws_data_grid_col
                  where data_grid_id = :new.data_grid_id)
       loop
           la_col_label(c1.column_alias) := c1.report_label;
       end loop;
       -- strings
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C001'),'C',:old.c001,:new.c001);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C002'),'C',:old.c002,:new.c002);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C003'),'C',:old.c003,:new.c003);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C004'),'C',:old.c004,:new.c004);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C005'),'C',:old.c005,:new.c005);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C006'),'C',:old.c006,:new.c006);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C007'),'C',:old.c007,:new.c007);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C008'),'C',:old.c008,:new.c008);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C009'),'C',:old.c009,:new.c009);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C010'),'C',:old.c010,:new.c010);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C011'),'C',:old.c011,:new.c011);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C012'),'C',:old.c012,:new.c012);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C013'),'C',:old.c013,:new.c013);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C014'),'C',:old.c014,:new.c014);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C015'),'C',:old.c015,:new.c015);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C016'),'C',:old.c016,:new.c016);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C017'),'C',:old.c017,:new.c017);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C018'),'C',:old.c018,:new.c018);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C019'),'C',:old.c019,:new.c019);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C020'),'C',:old.c020,:new.c020);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C021'),'C',:old.c021,:new.c021);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C022'),'C',:old.c022,:new.c022);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C023'),'C',:old.c023,:new.c023);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C024'),'C',:old.c024,:new.c024);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C025'),'C',:old.c025,:new.c025);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C026'),'C',:old.c026,:new.c026);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C027'),'C',:old.c027,:new.c027);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C028'),'C',:old.c028,:new.c028);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C029'),'C',:old.c029,:new.c029);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C030'),'C',:old.c030,:new.c030);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C031'),'C',:old.c031,:new.c031);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C032'),'C',:old.c032,:new.c032);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C033'),'C',:old.c033,:new.c033);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C034'),'C',:old.c034,:new.c034);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C035'),'C',:old.c035,:new.c035);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C036'),'C',:old.c036,:new.c036);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C037'),'C',:old.c037,:new.c037);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C038'),'C',:old.c038,:new.c038);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C039'),'C',:old.c039,:new.c039);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C040'),'C',:old.c040,:new.c040);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C041'),'C',:old.c041,:new.c041);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C042'),'C',:old.c042,:new.c042);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C043'),'C',:old.c043,:new.c043);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C044'),'C',:old.c044,:new.c044);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C045'),'C',:old.c045,:new.c045);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C046'),'C',:old.c046,:new.c046);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C047'),'C',:old.c047,:new.c047);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C048'),'C',:old.c048,:new.c048);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C049'),'C',:old.c049,:new.c049);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C050'),'C',:old.c050,:new.c050);
       -- numbers
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N001'),'N',null,null,null,null,:old.n001,:new.n001);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N002'),'N',null,null,null,null,:old.n002,:new.n002);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N003'),'N',null,null,null,null,:old.n003,:new.n003);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N004'),'N',null,null,null,null,:old.n004,:new.n004);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N005'),'N',null,null,null,null,:old.n005,:new.n005);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N006'),'N',null,null,null,null,:old.n006,:new.n006);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N007'),'N',null,null,null,null,:old.n007,:new.n007);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N008'),'N',null,null,null,null,:old.n008,:new.n008);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N009'),'N',null,null,null,null,:old.n009,:new.n009);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N010'),'N',null,null,null,null,:old.n010,:new.n010);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N011'),'N',null,null,null,null,:old.n011,:new.n011);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N012'),'N',null,null,null,null,:old.n012,:new.n012);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N013'),'N',null,null,null,null,:old.n013,:new.n013);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N014'),'N',null,null,null,null,:old.n014,:new.n014);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N015'),'N',null,null,null,null,:old.n015,:new.n015);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N016'),'N',null,null,null,null,:old.n016,:new.n016);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N017'),'N',null,null,null,null,:old.n017,:new.n017);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N018'),'N',null,null,null,null,:old.n018,:new.n018);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N019'),'N',null,null,null,null,:old.n019,:new.n019);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N020'),'N',null,null,null,null,:old.n020,:new.n020);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N021'),'N',null,null,null,null,:old.n021,:new.n021);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N022'),'N',null,null,null,null,:old.n022,:new.n022);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N023'),'N',null,null,null,null,:old.n023,:new.n023);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N024'),'N',null,null,null,null,:old.n024,:new.n024);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N025'),'N',null,null,null,null,:old.n025,:new.n025);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N026'),'N',null,null,null,null,:old.n026,:new.n026);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N027'),'N',null,null,null,null,:old.n027,:new.n027);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N028'),'N',null,null,null,null,:old.n028,:new.n028);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N029'),'N',null,null,null,null,:old.n029,:new.n029);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N030'),'N',null,null,null,null,:old.n030,:new.n030);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N031'),'N',null,null,null,null,:old.n031,:new.n031);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N032'),'N',null,null,null,null,:old.n032,:new.n032);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N033'),'N',null,null,null,null,:old.n033,:new.n033);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N034'),'N',null,null,null,null,:old.n034,:new.n034);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N035'),'N',null,null,null,null,:old.n035,:new.n035);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N036'),'N',null,null,null,null,:old.n036,:new.n036);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N037'),'N',null,null,null,null,:old.n037,:new.n037);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N038'),'N',null,null,null,null,:old.n038,:new.n038);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N039'),'N',null,null,null,null,:old.n039,:new.n039);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N040'),'N',null,null,null,null,:old.n040,:new.n040);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N041'),'N',null,null,null,null,:old.n041,:new.n041);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N042'),'N',null,null,null,null,:old.n042,:new.n042);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N043'),'N',null,null,null,null,:old.n043,:new.n043);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N044'),'N',null,null,null,null,:old.n044,:new.n044);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N045'),'N',null,null,null,null,:old.n045,:new.n045);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N046'),'N',null,null,null,null,:old.n046,:new.n046);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N047'),'N',null,null,null,null,:old.n047,:new.n047);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N048'),'N',null,null,null,null,:old.n048,:new.n048);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N049'),'N',null,null,null,null,:old.n049,:new.n049);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N050'),'N',null,null,null,null,:old.n050,:new.n050);
       -- dates
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D001'),'D',null,null,:old.d001,:new.d001);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D002'),'D',null,null,:old.d002,:new.d002);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D003'),'D',null,null,:old.d003,:new.d003);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D004'),'D',null,null,:old.d004,:new.d004);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D005'),'D',null,null,:old.d005,:new.d005);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D006'),'D',null,null,:old.d006,:new.d006);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D007'),'D',null,null,:old.d007,:new.d007);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D008'),'D',null,null,:old.d008,:new.d008);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D009'),'D',null,null,:old.d009,:new.d009);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D010'),'D',null,null,:old.d010,:new.d010);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D011'),'D',null,null,:old.d011,:new.d011);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D012'),'D',null,null,:old.d012,:new.d012);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D013'),'D',null,null,:old.d013,:new.d013);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D014'),'D',null,null,:old.d014,:new.d014);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D015'),'D',null,null,:old.d015,:new.d015);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D016'),'D',null,null,:old.d016,:new.d016);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D017'),'D',null,null,:old.d017,:new.d017);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D018'),'D',null,null,:old.d018,:new.d018);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D019'),'D',null,null,:old.d019,:new.d019);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D020'),'D',null,null,:old.d020,:new.d020);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D021'),'D',null,null,:old.d021,:new.d021);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D022'),'D',null,null,:old.d022,:new.d022);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D023'),'D',null,null,:old.d023,:new.d023);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D024'),'D',null,null,:old.d024,:new.d024);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D025'),'D',null,null,:old.d025,:new.d025);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D026'),'D',null,null,:old.d026,:new.d026);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D027'),'D',null,null,:old.d027,:new.d027);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D028'),'D',null,null,:old.d028,:new.d028);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D029'),'D',null,null,:old.d029,:new.d029);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D030'),'D',null,null,:old.d030,:new.d030);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D031'),'D',null,null,:old.d031,:new.d031);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D032'),'D',null,null,:old.d032,:new.d032);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D033'),'D',null,null,:old.d033,:new.d033);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D034'),'D',null,null,:old.d034,:new.d034);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D035'),'D',null,null,:old.d035,:new.d035);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D036'),'D',null,null,:old.d036,:new.d036);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D037'),'D',null,null,:old.d037,:new.d037);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D038'),'D',null,null,:old.d038,:new.d038);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D039'),'D',null,null,:old.d039,:new.d039);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D040'),'D',null,null,:old.d040,:new.d040);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D041'),'D',null,null,:old.d041,:new.d041);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D042'),'D',null,null,:old.d042,:new.d042);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D043'),'D',null,null,:old.d043,:new.d043);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D044'),'D',null,null,:old.d044,:new.d044);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D045'),'D',null,null,:old.d045,:new.d045);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D046'),'D',null,null,:old.d046,:new.d046);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D047'),'D',null,null,:old.d047,:new.d047);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D048'),'D',null,null,:old.d048,:new.d048);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D049'),'D',null,null,:old.d049,:new.d049);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D050'),'D',null,null,:old.d050,:new.d050);
    end if;
    --
    -- set owner
    --
    if :new.owner is null then
        :new.owner := :new.created_by;
    end if;
end;

/
ALTER TRIGGER  "APEX$_WS_ROWS_T1" ENABLE
/
CREATE OR REPLACE FORCE VIEW  "DUPLICATES" ("ID_COMPLEX", "COUNT") AS 
  select ID_COMPLEX, count(ID_COMPLEX) AS "COUNT"from INCOME_LOGgroup by ID_COMPLEXhaving count (ID_COMPLEX) > 1ORDER BY ID_COMPLEX DESC
/
CREATE OR REPLACE FORCE VIEW  "EC_EXPENSES_SORTED" ("ID", "YEAR_EXP", "MONTH_EXP", "DATE_EXP", "REFERENCE", "ID_SUPPLIER", "TOTAL", "METHOD_ID", "HABITANTS_NUMBER", "HABITANTS", "BUILDING_ID") AS 
  SELECT 
    "ID","YEAR_EXP","MONTH_EXP","DATE_EXP","REFERENCE","ID_SUPPLIER","TOTAL","METHOD_ID","HABITANTS_NUMBER","HABITANTS","BUILDING_ID"
FROM
    EC.EXPENSES_LOG
ORDER BY DATE_EXP DESC
/
CREATE OR REPLACE FORCE VIEW  "EC_INCOME_SORTED" ("ID", "Година", "Месец", "Етаж", "ап.", "ЕС", "Фамилия", "Общо", "РИО", "бр. жив", "чл. 51", "доп.", "ток ас. ап.", "ток ст. ап.", "такса ас. ап.", "почистване ап.", "тек. разходи ап.", "баланс", "ток ас.", "ток ст.", "такса ас.", "почистване", "тек. разходи", "ID_COMPLEX") AS 
  	ID AS "ID", 	YEAR_INC AS "Година",	MONTH_INC AS "Месец",	FLOOR_INC AS "Етаж", 	EC.INCOME_LOG.AP_ID AS "ап.",	EC.INCOME_LOG.BUILDING_ID AS "ЕС", 	EC.HOUSEHOLDS.HOUSEHOLD AS "Фамилия",	AMOUNT AS "Общо",	RIO AS "РИО",	HAB_NUMBER AS "бр. жив", 	ART_51 AS "чл. 51",	MANAGEMENT_COST AS "доп.", 	ELECTR_ELEVATOR_AP AS "ток ас. ап.",	ELECTR_STAIRCASE_AP AS "ток ст. ап.", 	TAX_ELEVATOR_AP AS "такса ас. ап.", 	CLEANER_AP AS "почистване ап.", 	RUN_COST_AP AS "тек. разходи ап.", 	BALANCE AS "баланс", 	ELECTR_ELEVATOR  AS "ток ас.", 	ELECTR_STAIRCASE AS "ток ст.", 	TAX_ELEVATOR AS "такса ас.", 	CLEANER AS "почистване", 	RUN_COST AS "тек. разходи", 	ID_COMPLEXFROM EC.INCOME_LOGJOIN EC.HOUSEHOLDSON EC.INCOME_LOG.ID_HOUSEHOLD = EC.HOUSEHOLDS."id_household"ORDER BY YEAR_INC DESC, MONTH_INC DESC, FLOOR_INC
/
CREATE OR REPLACE FORCE VIEW  "EC_REPORT" ("Година", "Месец", "Общо", "Ток стълби", "Ток асансьор", "Такса асансьор", "Почистване", "Текущи разходи") AS 
  YEAR_INC AS "Година", MONTH_INC AS "Месец", ROUND(SUM(AMOUNT),2) AS "Общо", ROUND(SUM(ELECTR_STAIRCASE_AP),2) AS "Ток стълби", ROUND(SUM(ELECTR_ELEVATOR_AP),2) AS "Ток асансьор", ROUND(SUM(TAX_ELEVATOR_AP),2) AS "Такса асансьор",ROUND(SUM(CLEANER_AP),2) AS "Почистване",ROUND(SUM(RUN_COST_AP),2) AS "Текущи разходи"FROM EC.INCOME_LOGGROUP BY YEAR_INC , MONTH_INCORDER BY YEAR_INC DESC, MONTH_INC
/
