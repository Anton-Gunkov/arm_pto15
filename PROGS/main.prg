ZOOM WINDOW (_screen.Name) MAX
_screen.Caption = '??? ???????? ??? v1.5'

PUBLIC m.OpenForm, m.gcPoisk, m.nRecNoDSKbase, m.nSumma, m.nElektroSumma, m.IndexPrejskurant, m.nAmortiz, m.nAmortizKompl

SET DELETED ON
SET CENTURY ON
*SET SAFETY OFF

*OPEN DATABASE data\arm_pto EXCLUSIVE

m.IndexPrejskurant=0
m.OpenForm=0

*????? ???? ??? ??????
m.gcPoisk = ''
m.nRecNoDSKbase=1

*-------------??????????? ???? ??? ??????????-------------------
PUBLIC m.nYear, m.nMonth

m.nYear=''
m.nMonth=''

DO CASE && ?????
   CASE DAY(DATE()) <= 15 
        m.nMonth = CMONTH(DATE()-16)  && ???? ?? ???????????? ?? ???? ?????
   CASE DAY(DATE()) > 15
        m.nMonth = CMONTH(DATE())
ENDCASE

DO CASE && ???
   CASE MONTH(DATE()) = 1 AND DAY(DATE()) <= 15
        m.nYear = YEAR(DATE())-1
   CASE MONTH(DATE()) = 1 AND DAY(DATE()) > 15
        m.nYear = YEAR(DATE())  
   CASE MONTH(DATE()) # 1
        m.nYear = YEAR(DATE())
ENDCASE
*--------------------------------------------------

*????????
DO menus\main_menu.mpr
ON SHUTDOWN DO progs\onexit.prg
READ EVENTS




