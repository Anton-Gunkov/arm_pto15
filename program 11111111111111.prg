IF m.OpenForm=0
   USE data\dskbase IN 0 AGAIN ORDER PREJSCURS
   SET FILTER TO IN dskbase
   USE data\NalogMy IN 0 AGAIN
   USE data\komplektuxa IN 0 AGAIN
   USE data\ceh_new IN 0 AGAIN
   PUBLIC m.nNomerK, m.VyborNal, m.nVolumeK, m.EdizmK, m.CenaK, m.ElektroK, m.AmortizK, m.nSummaKompl, m.nSummaET, m.SummaBuf, m.nVolkub
   PUBLIC m.CehkodK, m.CehNaimeK, m.NazvanieK, m.Zarplata_osn, m.VsegoK
   PUBLIC  m.Itog6, m.Itog11, m.Itog13, m.Itog15
   PUBLIC m.Txt3, m.Txt4, m.Txt5, m.Txt8, m.Txt9, m.Txt10, m.Txt12, m.Txt14
   
   CREATE CURSOR CurVypusk (÷ех Character(15), Ќаименование Character(50), ≈диница Character(6), ÷ена«а≈дј N(12), ;
   ÷ена«а≈д1 N(12), ÷ена«а≈д2 N(12), ÷ена«а≈д3 N(12), ÷ена«а≈д4 N(12), ÷ена«а≈д5 N(12), ÷ена«а≈д6 N(12), ÷ена«а≈д7 N(12), ÷ена«а≈д8 N(12), ÷ена«а≈д9 N(12), ÷ена«а≈д10 N(12), ÷ена«а≈д11 N(12), ÷ена«а≈д12 N(12), ÷ена«а≈д14 N(12), ÷ена«а≈д15 N(12), ;
   ќбъЄм N(10,3), ѕилћат L, ќбъЄм уб N(12,4), ¬сего N(10))

   SELECT dskbase
   LOCATE FOR na_Volume # 0 
      DO WHILE FOUND( )
      
         m.nElektroSumma = 0
         m.nSumma = 0
         m.nAmortiz = 0
         m.nVolkub=0


         IF kompl_1#0
            m.nNomerK=kompl_1
            m.nVolumeK=volume_1
            SELECT komplektuxa 
            SET FILTER TO n_kod=m.nNomerK IN komplektuxa
            GO BOTTOM IN komplektuxa
            m.CenaK=Cena
            m.ElektroK=Elektro
            m.AmortizK=Amortiz
            IF m.ElektroK#0 AND m.AmortizK#0
            m.nVolkub = m.nVolkub + m.nVolumeK
            ENDIF
            m.nElektroSumma = m.nElektroSumma + (m.nVolumeK * m.ElektroK)
            m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
            m.nAmortiz = m.nAmortiz + (m.AmortizK * m.nVolumeK)
         ENDIF 

         SELECT dskbase
         IF kompl_2#0
            m.nNomerK=kompl_2
            m.nVolumeK=volume_2
            SELECT komplektuxa 
            SET FILTER TO n_kod=m.nNomerK IN komplektuxa
            GO BOTTOM IN komplektuxa
            m.CenaK=Cena
            m.ElektroK=Elektro
            m.AmortizK=Amortiz
            IF m.ElektroK#0 AND m.AmortizK#0
            m.nVolkub = m.nVolkub + m.nVolumeK
            ENDIF
            m.nElektroSumma = m.nElektroSumma + (m.nVolumeK * m.ElektroK)
            m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
            m.nAmortiz = m.nAmortiz + (m.AmortizK * m.nVolumeK)
         ENDIF 
         
         SELECT dskbase
         IF kompl_3#0
            m.nNomerK=kompl_3
            m.nVolumeK=volume_3
            SELECT komplektuxa 
            SET FILTER TO n_kod=m.nNomerK IN komplektuxa
            GO BOTTOM IN komplektuxa
            m.CenaK=Cena
            m.ElektroK=Elektro
            m.AmortizK=Amortiz
            IF m.ElektroK#0 AND m.AmortizK#0
            m.nVolkub = m.nVolkub + m.nVolumeK
            ENDIF
            m.nElektroSumma = m.nElektroSumma + (m.nVolumeK * m.ElektroK)
            m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
            m.nAmortiz = m.nAmortiz + (m.AmortizK * m.nVolumeK)
         ENDIF 

         SELECT dskbase
         IF kompl_4#0
            m.nNomerK=kompl_4
            m.nVolumeK=volume_4
            SELECT komplektuxa 
            SET FILTER TO n_kod=m.nNomerK IN komplektuxa
            GO BOTTOM IN komplektuxa
            m.CenaK=Cena
            m.ElektroK=Elektro
            m.AmortizK=Amortiz
            IF m.ElektroK#0 AND m.AmortizK#0
            m.nVolkub = m.nVolkub + m.nVolumeK
            ENDIF
            m.nElektroSumma = m.nElektroSumma + (m.nVolumeK * m.ElektroK)
            m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
            m.nAmortiz = m.nAmortiz + (m.AmortizK * m.nVolumeK)
         ENDIF 

         SELECT dskbase
         IF kompl_5#0
            m.nNomerK=kompl_5
            m.nVolumeK=volume_5
            SELECT komplektuxa 
            SET FILTER TO n_kod=m.nNomerK IN komplektuxa
            GO BOTTOM IN komplektuxa
            m.CenaK=Cena
            m.ElektroK=Elektro
            m.AmortizK=Amortiz
            IF m.ElektroK#0 AND m.AmortizK#0
            m.nVolkub = m.nVolkub + m.nVolumeK
            ENDIF
            m.nElektroSumma = m.nElektroSumma + (m.nVolumeK * m.ElektroK)
            m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
            m.nAmortiz = m.nAmortiz + (m.AmortizK * m.nVolumeK)
         ENDIF 

         SELECT dskbase
         IF kompl_6#0
            m.nNomerK=kompl_6
            m.nVolumeK=volume_6
            SELECT komplektuxa 
            SET FILTER TO n_kod=m.nNomerK IN komplektuxa
            GO BOTTOM IN komplektuxa
            m.CenaK=Cena
            m.ElektroK=Elektro
            m.AmortizK=Amortiz
            IF m.ElektroK#0 AND m.AmortizK#0
            m.nVolkub = m.nVolkub + m.nVolumeK
            ENDIF
            m.nElektroSumma = m.nElektroSumma + (m.nVolumeK * m.ElektroK)
            m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
            m.nAmortiz = m.nAmortiz + (m.AmortizK * m.nVolumeK)
         ENDIF 

         SELECT dskbase
         IF kompl_7#0
            m.nNomerK=kompl_7
            m.nVolumeK=volume_7
            SELECT komplektuxa 
            SET FILTER TO n_kod=m.nNomerK IN komplektuxa
            GO BOTTOM IN komplektuxa
            m.CenaK=Cena
            m.ElektroK=Elektro
            m.AmortizK=Amortiz
            IF m.ElektroK#0 AND m.AmortizK#0
            m.nVolkub = m.nVolkub + m.nVolumeK
            ENDIF
            m.nElektroSumma = m.nElektroSumma + (m.nVolumeK * m.ElektroK)
            m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
            m.nAmortiz = m.nAmortiz + (m.AmortizK * m.nVolumeK)
         ENDIF 

         SELECT dskbase
         IF kompl_8#0
            m.nNomerK=kompl_8
            m.nVolumeK=volume_8
            SELECT komplektuxa 
            SET FILTER TO n_kod=m.nNomerK IN komplektuxa
            GO BOTTOM IN komplektuxa
            m.CenaK=Cena
            m.ElektroK=Elektro
            m.AmortizK=Amortiz
            IF m.ElektroK#0 AND m.AmortizK#0
            m.nVolkub = m.nVolkub + m.nVolumeK
            ENDIF
            m.nElektroSumma = m.nElektroSumma + (m.nVolumeK * m.ElektroK)
            m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
            m.nAmortiz = m.nAmortiz + (m.AmortizK * m.nVolumeK)
         ENDIF 

         SELECT dskbase
         IF kompl_9#0
            m.nNomerK=kompl_9
            m.nVolumeK=volume_9
            SELECT komplektuxa 
            SET FILTER TO n_kod=m.nNomerK IN komplektuxa
            GO BOTTOM IN komplektuxa
            m.CenaK=Cena
            m.ElektroK=Elektro
            m.AmortizK=Amortiz
            IF m.ElektroK#0 AND m.AmortizK#0
            m.nVolkub = m.nVolkub + m.nVolumeK
            ENDIF
            m.nElektroSumma = m.nElektroSumma + (m.nVolumeK * m.ElektroK)
            m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
            m.nAmortiz = m.nAmortiz + (m.AmortizK * m.nVolumeK)
         ENDIF 

         SELECT dskbase
         IF kompl_10#0
            m.nNomerK=kompl_10
            m.nVolumeK=volume_10
            SELECT komplektuxa 
            SET FILTER TO n_kod=m.nNomerK IN komplektuxa
            GO BOTTOM IN komplektuxa
            m.CenaK=Cena
            m.ElektroK=Elektro
            m.AmortizK=Amortiz
            IF m.ElektroK#0 AND m.AmortizK#0
            m.nVolkub = m.nVolkub + m.nVolumeK
            ENDIF
            m.nElektroSumma = m.nElektroSumma + (m.nVolumeK * m.ElektroK)
            m.nSumma = m.nSumma + (m.nVolumeK * m.CenaK)
            m.nAmortiz = m.nAmortiz + (m.AmortizK * m.nVolumeK)
         ENDIF 

         *-------
         SELECT dskbase
         m.VyborNal=dskbase.nalog_sys
         SELECT NalogMy 
         GOTO RECORD m.VyborNal

         m.nSummaKompl=ROUND(m.nSumma, 0)
         m.SummaBuf=m.nSummaKompl
         m.nAmortizKompl = ROUND(m.nAmortiz, 0)
         *------¬ключение отходов
         PUBLIC m.ButtonCaption
         SELECT dskbase
         DO CASE 
            CASE dskbase.otxody=.T.
            m.nSummaKompl = ROUND(m.SummaBuf - (m.SummaBuf*0.0082), 0)
            m.ButtonCaption='ƒј'
            CASE dskbase.otxody=.F.
            m.ButtonCaption='Ќ≈“'
         ENDCASE
         *------------------------
         m.nSummaET=ROUND((m.nElektroSumma * nalogmy.stoim_elec) + (dskbase.teploen * nalogmy.stoim_tepl), 0)
             
         *-------
         m.Itog6=0
         m.Itog11=0
         m.Itog13=0
         m.Itog15=0
         
         m.Txt3=0
         m.Txt4=0
         m.Txt5=0
         m.Txt8=0
         m.Txt9=0
         m.Txt10=0
         m.Txt12=0
         m.Txt14=0
         
         m.Txt3=ROUND(m.nElektroSumma * nalogmy.stoim_elec, 0)
         m.Txt4=ROUND(nalogmy.pooschritelny * dskbase.zarp_osn /100,  0)
         m.Txt5=ROUND(nalogmy.zp_dop * dskbase.zarp_osn /100, 0)
         m.Itog6=Dskbase.Zarp_osn + m.Txt4 + m.Txt5

         m.Txt10=ROUND(m.Itog6*nalogmy.ceh_rashod/100, 0)
         m.Txt8=ROUND(m.Itog6*nalogmy.nalogi_ot_zp/100 + 0.7*(m.Itog6*nalogmy.ceh_rashod/100)*nalogmy.nalogi_ot_zp/100, 0)
         m.TxtA=m.nAmortizKompl
         m.Txt9=ROUND(m.Itog6*nalogmy.soc_strax/100 + 0.7*(m.Itog6*nalogmy.ceh_rashod/100)*nalogmy.soc_strax/100, 0)

         m.Itog11=m.nSummaKompl + m.nSummaET + m.Itog6 + m.nAmortizKompl + m.Txt8 + m.Txt9 + m.Txt10
         m.Txt12=ROUND(m.Itog11* dskbase.nalog_innov/100, 0)
         m.Itog13=m.Itog11 + m.Txt12
         m.Txt14=ROUND(m.Itog13* dskbase.nalog_pribyl/100, 0)
         m.Itog15=m.Itog13 + m.Txt14
         m.Txt16=ROUND(m.Itog15* (nalogmy.ediny/(100-nalogmy.ediny)), 0)
         m.Itog17=m.Itog15 + m.Txt16
         m.Txt18=ROUND(m.Itog17* nalogmy.nds/100, 0)
         m.Itog19=m.Itog17 + m.Txt18

         *-------------ƒобавление в курсор
         SELECT dskbase
         
         m.CehkodK = ceh_kod
         SELECT ceh_new
         LOCATE FOR kod = m.CehkodK
            DO WHILE FOUND( )
            m.CehNaimeK = naime
            CONTINUE
         ENDDO
         SELECT dskbase
         
         m.NazvanieK = n_obj
         m.Zarplata_osn = zarp_osn
         m.EdizmK = edizm
         m.VolumeK = na_volume
         m.VsegoK = ROUND(m.Itog15*na_volume, 0)
         INSERT INTO CurVypusk (÷ех, Ќаименование, ≈диница, ÷ена«а≈дј, ÷ена«а≈д1, ÷ена«а≈д2, ÷ена«а≈д3, ÷ена«а≈д4, ÷ена«а≈д5, ÷ена«а≈д6, ÷ена«а≈д7, ÷ена«а≈д8, ÷ена«а≈д9, ÷ена«а≈д10, ÷ена«а≈д11, ÷ена«а≈д12, ÷ена«а≈д14, ÷ена«а≈д15, ќбъЄм, ѕилћат, ќбъЄм уб, ¬сего); 
         VALUES (m.CehNaimeK, m.NazvanieK, m.EdizmK, m.TxtA, m.nSummaKompl, m.Txt3, m.Zarplata_osn, m.Txt4, m.Txt5, m.Itog6, m.Txt8, m.Txt9, m.Txt10, m.Itog11, m.Txt12, m.Itog13, m.Txt14, m.Itog15, m.VolumeK, .F., m.nVolkub, m.VsegoK)
      CONTINUE
   ENDDO 

   DO FORM forms\vypusk_prod
   
ELSE 
   _screen.ActiveForm.show
ENDIF

*--------------------------------------------------------------




