CLOSE DATABASES
CLOSE TABLES
SET ANSI OFF
SET EXACT OFF 

LOCAL cNewKod, i

OPEN DATABASE data\arm_pto EXCLUSIVE
USE nsikal1
GO TOP
cNewKod='?'
replace kod1 WITH cNewKod FOR kod1='408' 
 
*CLOSE DATABASES
*CLOSE TABLES