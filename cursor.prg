SET DELETED ON

CREATE CURSOR KomplektS (Код N(6), Название Character(37), Объём N(12,4), Единица Character(6), Цена N(12,3)) 

PUBLIC m.nNomerK, m.NazvanieK, m.nVolumeK, m.EdizmK, m.CenaK, m.nCounter


USE data\dskbase IN 0 AGAIN 
USE data\komplektuxa IN 0 AGAIN 

GOTO RECORD 200 IN dskbase

SELECT dskbase
m.ncText1=dskbase.n_obj
m.ncText2=dskbase.edizm

SELECT dskbase 
m.nCounter = 0
m.nSumma = 0
m.nRecNoDSKbase=RECNO()

IF kompl_1#0
   m.nNomerK=kompl_1
   m.nVolumeK=volume_1
   SELECT komplektuxa 
   SET FILTER TO n_kod=m.nNomerK IN komplektuxa
   GO BOTTOM IN komplektuxa
   m.NazvanieK=n_obj
   m.EdizmK=Edizm
   m.CenaK=Cena
   SELECT KomplektS
   INSERT INTO KomplektS (Код, Название, Объём, Единица, Цена);
   VALUES (m.nNomerK, m.NazvanieK, m.nVolumeK, m.EdizmK, m.CenaK)
   m.nCounter=1
   m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
ENDIF 

SELECT dskbase
IF kompl_2#0
   m.nNomerK=kompl_2
   m.nVolumeK=volume_2
   SELECT komplektuxa 
   SET FILTER TO n_kod=m.nNomerK IN komplektuxa
   GO BOTTOM IN komplektuxa
   m.NazvanieK=n_obj
   m.EdizmK=Edizm
   m.CenaK=Cena
   SELECT KomplektS
   INSERT INTO KomplektS (Код, Название, Объём, Единица, Цена);
   VALUES (m.nNomerK, m.NazvanieK, m.nVolumeK, m.EdizmK, m.CenaK)
   m.nCounter=2
   m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
ENDIF 

SELECT dskbase
IF kompl_3#0
   m.nNomerK=kompl_3
   m.nVolumeK=volume_3
   SELECT komplektuxa 
   SET FILTER TO n_kod=m.nNomerK IN komplektuxa
   GO BOTTOM IN komplektuxa
   m.NazvanieK=n_obj
   m.EdizmK=Edizm
   m.CenaK=Cena
   SELECT KomplektS
   INSERT INTO KomplektS (Код, Название, Объём, Единица, Цена);
   VALUES (m.nNomerK, m.NazvanieK, m.nVolumeK, m.EdizmK, m.CenaK)
   m.nCounter=3
   m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
ENDIF 

SELECT dskbase
IF kompl_4#0
   m.nNomerK=kompl_4
   m.nVolumeK=volume_4
   SELECT komplektuxa 
   SET FILTER TO n_kod=m.nNomerK IN komplektuxa
   GO BOTTOM IN komplektuxa
   m.NazvanieK=n_obj
   m.EdizmK=Edizm
   m.CenaK=Cena
   SELECT KomplektS
   INSERT INTO KomplektS (Код, Название, Объём, Единица, Цена);
   VALUES (m.nNomerK, m.NazvanieK, m.nVolumeK, m.EdizmK, m.CenaK)
   m.nCounter=4
   m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
ENDIF 

SELECT dskbase
IF kompl_5#0
   m.nNomerK=kompl_5
   m.nVolumeK=volume_5
   SELECT komplektuxa 
   SET FILTER TO n_kod=m.nNomerK IN komplektuxa
   GO BOTTOM IN komplektuxa
   m.NazvanieK=n_obj
   m.EdizmK=Edizm
   m.CenaK=Cena
   SELECT KomplektS
   INSERT INTO KomplektS (Код, Название, Объём, Единица, Цена);
   VALUES (m.nNomerK, m.NazvanieK, m.nVolumeK, m.EdizmK, m.CenaK)
   m.nCounter=5
   m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
ENDIF 

SELECT dskbase
IF kompl_6#0
   m.nNomerK=kompl_6
   m.nVolumeK=volume_6
   SELECT komplektuxa 
   SET FILTER TO n_kod=m.nNomerK IN komplektuxa
   GO BOTTOM IN komplektuxa
   m.NazvanieK=n_obj
   m.EdizmK=Edizm
   m.CenaK=Cena
   SELECT KomplektS
   INSERT INTO KomplektS (Код, Название, Объём, Единица, Цена);
   VALUES (m.nNomerK, m.NazvanieK, m.nVolumeK, m.EdizmK, m.CenaK)
   m.nCounter=6
   m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
ENDIF 

SELECT dskbase
IF kompl_7#0
   m.nNomerK=kompl_7
   m.nVolumeK=volume_7
   SELECT komplektuxa 
   SET FILTER TO n_kod=m.nNomerK IN komplektuxa
   GO BOTTOM IN komplektuxa
   m.NazvanieK=n_obj
   m.EdizmK=Edizm
   m.CenaK=Cena
   SELECT KomplektS
   INSERT INTO KomplektS (Код, Название, Объём, Единица, Цена);
   VALUES (m.nNomerK, m.NazvanieK, m.nVolumeK, m.EdizmK, m.CenaK)
   m.nCounter=7
   m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
ENDIF 

SELECT dskbase
IF kompl_8#0
   m.nNomerK=kompl_8
   m.nVolumeK=volume_8
   SELECT komplektuxa 
   SET FILTER TO n_kod=m.nNomerK IN komplektuxa
   GO BOTTOM IN komplektuxa
   m.NazvanieK=n_obj
   m.EdizmK=Edizm
   m.CenaK=Cena
   SELECT KomplektS
   INSERT INTO KomplektS (Код, Название, Объём, Единица, Цена);
   VALUES (m.nNomerK, m.NazvanieK, m.nVolumeK, m.EdizmK, m.CenaK)
   m.nCounter=8
   m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
ENDIF 

SELECT dskbase
IF kompl_9#0
   m.nNomerK=kompl_9
   m.nVolumeK=volume_9
   SELECT komplektuxa 
   SET FILTER TO n_kod=m.nNomerK IN komplektuxa
   GO BOTTOM IN komplektuxa
   m.NazvanieK=n_obj
   m.EdizmK=Edizm
   m.CenaK=Cena
   SELECT KomplektS
   INSERT INTO KomplektS (Код, Название, Объём, Единица, Цена);
   VALUES (m.nNomerK, m.NazvanieK, m.nVolumeK, m.EdizmK, m.CenaK)
   m.nCounter=9
   m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
ENDIF    

SELECT dskbase
IF kompl_10#0
   m.nNomerK=kompl_10
   m.nVolumeK=volume_10
   SELECT komplektuxa 
   SET FILTER TO n_kod=m.nNomerK IN komplektuxa
   GO BOTTOM IN komplektuxa
   m.NazvanieK=n_obj
   m.EdizmK=Edizm
   m.CenaK=Cena
   SELECT KomplektS
   INSERT INTO KomplektS (Код, Название, Объём, Единица, Цена);
   VALUES (m.nNomerK, m.NazvanieK, m.nVolumeK, m.EdizmK, m.CenaK)
   m.nCounter=10
   m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
ENDIF


SELECT KomplektS
BROWSE 