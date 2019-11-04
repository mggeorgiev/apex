CREATE OR REPLACE TRIGGER  "CEZ_ID_T1" 
BEFORE
insert on "CEZ"
for each row
begin
SELECT :new.YEAR*100 + :new.MONTH
  INTO :new.ID_CEZ
  FROM dual;
end;

/
ALTER TRIGGER  "CEZ_ID_T1" ENABLE
/