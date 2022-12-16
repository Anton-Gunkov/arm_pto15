CLOSE TABLES
CLOSE DATABASES

PUBLIC m.Nexpl, m.Ntrudz

OPEN DATABASE data\arm_pto EXCLUSIVE

USE data\nsikal1 IN 0
USE data\komplektuxa IN 0

SELECT nsikal1 
GO TOP 
SELECT komplektuxa 
GO TOP 

FOR i=1 TO 192
   SELECT nsikal1
   m.Nexpl=expl
   SKIP 1
   SELECT komplektuxa 
   replace explk WITH m.Nexpl
   SKIP 1
   *i=i+1
ENDFOR

SELECT komplektuxa
BROWSE

   
