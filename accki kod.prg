CLOSE TABLES
CLOSE DATABASES

OPEN DATABASE data\arm_pto EXCLUSIVE

USE komplektuxa IN 0
USE Nsikal1 IN 0
USE Nsikal2 IN 0

SET EXACT ON

PUBLIC i, m.cIzdelie, m.nFlag, m.nKolvo, m.nVol, m.cNazvIzd, m.nNomer, m.cNomKompl

m.cIzdelie=''
m.nKolvo=1
m.nVoL=0
m.cNazvIzd=''
m.nNomer=0
m.cNomKompl=''

FOR i=1 TO 400                      &&��������� ���������� �������� (�������)
    SELECT Nsikal2
    SET FILTER TO 
    SET ORDER TO kod2               &&�������������
    GO TOP
    BROWSE
    m.cIzdelie=Nsikal2.kod2
    m.nKolvo=1
    IF m.cIzdelie='��'              &&������ ���������!!!���
    EXIT
    ELSE      
******************************************************************
*************************������� ����*****************************
******************************************************************

FOR m.nFlag=1 TO 10                 &&������� ��� ����� �������� �����
    SELECT Nsikal2
    SET FILTER TO kod2=m.cIzdelie IN Nsikal2
    BROWSE                          &&���������� ���������!!!
    GO TOP
    m.cNazvIzd=Nsikal2.n_obj2 
    m.cNomKompl=Nsikal2.kod2
    
    IF m.cNomKompl=''               &&�������� ��� �����������
    EXIT
    ENDIF
    
    IF m.cNomKompl#'' 
       IF m.nKolvo=1                                         &&������� ��� ������ �����. Volume_� Kompl_� max 10
          m.nVol=Nsikal2.Volum1                              &&����� ����� �� Nsikal2
          SELECT Nsikal1 
          SET FILTER TO kod1=m.cIzdelie IN Nsikal1           &&������� ������� � ������� ����
          BROWSE                                             &&���������� ���������!!!
          GO TOP  
          REPLACE Volume_1 WITH m.nVol IN Nsikal1            &&���������� �����. Volume_�
          SELECT komplektuxa  
          SET FILTER TO n_obj=m.cNazvIzd IN komplektuxa      &&������� �������� �������������� � �����������
          BROWSE                                             &&���������� ���������!!!
          GO TOP 
          m.nNomer=komplektuxa.n_kod                         &&����� ��� ����� �/�
          SELECT Nsikal1
          REPLACE Kompl_1 WITH m.nNomer IN Nsikal1           &&���������� �����. Kompl_�
        ENDIF 
       IF m.nKolvo=2                           
          m.nVol=Nsikal2.Volum1                
          SELECT Nsikal1 
          SET FILTER TO kod1=m.cIzdelie IN Nsikal1 
          BROWSE                               
          GO TOP  
          REPLACE Volume_2 WITH m.nVol IN Nsikal1 
          SELECT komplektuxa  
          SET FILTER TO n_obj=m.cNazvIzd IN komplektuxa 
          BROWSE                               
          GO TOP 
          m.nNomer=komplektuxa.n_kod                      
          SELECT Nsikal1
          REPLACE Kompl_2 WITH m.nNomer IN Nsikal1 
        ENDIF
       IF m.nKolvo=3                           
          m.nVol=Nsikal2.Volum1                
          SELECT Nsikal1 
          SET FILTER TO kod1=m.cIzdelie IN Nsikal1 
          BROWSE                               
          GO TOP  
          REPLACE Volume_3 WITH m.nVol IN Nsikal1 
          SELECT komplektuxa  
          SET FILTER TO n_obj=m.cNazvIzd IN komplektuxa 
          BROWSE                               
          GO TOP 
          m.nNomer=komplektuxa.n_kod                      
          SELECT Nsikal1
          REPLACE Kompl_3 WITH m.nNomer IN Nsikal1 
        ENDIF
       IF m.nKolvo=4                           
          m.nVol=Nsikal2.Volum1                
          SELECT Nsikal1 
          SET FILTER TO kod1=m.cIzdelie IN Nsikal1 
          BROWSE                               
          GO TOP  
          REPLACE Volume_4 WITH m.nVol IN Nsikal1 
          SELECT komplektuxa  
          SET FILTER TO n_obj=m.cNazvIzd IN komplektuxa 
          BROWSE                               
          GO TOP 
          m.nNomer=komplektuxa.n_kod                      
          SELECT Nsikal1
          REPLACE Kompl_4 WITH m.nNomer IN Nsikal1 
        ENDIF
       IF m.nKolvo=5                           
          m.nVol=Nsikal2.Volum1                
          SELECT Nsikal1 
          SET FILTER TO kod1=m.cIzdelie IN Nsikal1 
          BROWSE                               
          GO TOP  
          REPLACE Volume_5 WITH m.nVol IN Nsikal1 
          SELECT komplektuxa  
          SET FILTER TO n_obj=m.cNazvIzd IN komplektuxa 
          BROWSE                               
          GO TOP 
          m.nNomer=komplektuxa.n_kod                      
          SELECT Nsikal1
          REPLACE Kompl_5 WITH m.nNomer IN Nsikal1 
        ENDIF
       IF m.nKolvo=6                           
          m.nVol=Nsikal2.Volum1                
          SELECT Nsikal1 
          SET FILTER TO kod1=m.cIzdelie IN Nsikal1 
          BROWSE                               
          GO TOP  
          REPLACE Volume_6 WITH m.nVol IN Nsikal1 
          SELECT komplektuxa  
          SET FILTER TO n_obj=m.cNazvIzd IN komplektuxa 
          BROWSE                               
          GO TOP 
          m.nNomer=komplektuxa.n_kod                      
          SELECT Nsikal1
          REPLACE Kompl_6 WITH m.nNomer IN Nsikal1 
        ENDIF
       IF m.nKolvo=7                           
          m.nVol=Nsikal2.Volum1                
          SELECT Nsikal1 
          SET FILTER TO kod1=m.cIzdelie IN Nsikal1 
          BROWSE                               
          GO TOP  
          REPLACE Volume_7 WITH m.nVol IN Nsikal1 
          SELECT komplektuxa  
          SET FILTER TO n_obj=m.cNazvIzd IN komplektuxa 
          BROWSE                               
          GO TOP 
          m.nNomer=komplektuxa.n_kod                      
          SELECT Nsikal1
          REPLACE Kompl_7 WITH m.nNomer IN Nsikal1 
        ENDIF
       IF m.nKolvo=8                           
          m.nVol=Nsikal2.Volum1                
          SELECT Nsikal1 
          SET FILTER TO kod1=m.cIzdelie IN Nsikal1 
          BROWSE                               
          GO TOP  
          REPLACE Volume_8 WITH m.nVol IN Nsikal1 
          SELECT komplektuxa  
          SET FILTER TO n_obj=m.cNazvIzd IN komplektuxa 
          BROWSE                               
          GO TOP 
          m.nNomer=komplektuxa.n_kod                      
          SELECT Nsikal1
          REPLACE Kompl_8 WITH m.nNomer IN Nsikal1 
        ENDIF
       IF m.nKolvo=9                           
          m.nVol=Nsikal2.Volum1                
          SELECT Nsikal1 
          SET FILTER TO kod1=m.cIzdelie IN Nsikal1 
          BROWSE                               
          GO TOP  
          REPLACE Volume_9 WITH m.nVol IN Nsikal1 
          SELECT komplektuxa  
          SET FILTER TO n_obj=m.cNazvIzd IN komplektuxa 
          BROWSE                               
          GO TOP 
          m.nNomer=komplektuxa.n_kod                      
          SELECT Nsikal1
          REPLACE Kompl_9 WITH m.nNomer IN Nsikal1 
        ENDIF
       IF m.nKolvo=10                           
          m.nVol=Nsikal2.Volum1                
          SELECT Nsikal1 
          SET FILTER TO kod1=m.cIzdelie IN Nsikal1 
          BROWSE                               
          GO TOP  
          REPLACE Volume_10 WITH m.nVol IN Nsikal1 
          SELECT komplektuxa  
          SET FILTER TO n_obj=m.cNazvIzd IN komplektuxa 
          BROWSE                               
          GO TOP 
          m.nNomer=komplektuxa.n_kod                      
          SELECT Nsikal1
          REPLACE Kompl_10 WITH m.nNomer IN Nsikal1 
          m.nKolvo=11                           
        ENDIF
       IF m.nKolvo>10                           
          EXIT 
       ENDIF 
       
    SELECT Nsikal2   
    SET FILTER TO kod2=m.cIzdelie IN Nsikal2       &&������� �������������,
    BROWSE
    GO TOP                                         &&������� ������
    REPLACE kod2 WITH "��" IN Nsikal2              &&� �������, ����� ������� � ����������
        
    ENDIF                  
    m.cNomKompl=''                                 &&��������� � "�����" ��� ����� ������ �����, ��� �����������
    m.nKolvo=m.nKolvo+1
  ENDFOR

 ENDIF                                             && ����� ������ �������

ENDFOR                                             && �� ��� � ��!!!


SELECT Nsikal2                    &&������� ���������!
SET FILTER TO
SET ORDER TO KOD2
GO TOP
BROWSE
