CLOSE DATABASES
CLOSE TABLES

public m.mema

OPEN DATABASE data\arm_pto EXCLUSIVE

USE data\newk IN 0
USE data\komplektuxa IN 0

SELECT newk 
GO TOP 
SELECT komplektuxa 
GO TOP 

FOR i=1 TO 192
   SELECT komplektuxa 
   m.mema=Cena
   SKIP 1
   SELECT newk 
   replace pzatr WITH m.mema
   SKIP 1
ENDFOR

 
browse