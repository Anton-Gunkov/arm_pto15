LOCAL i, m.cNew
create cursor test (�������� C(50))    
insert into test (��������) values ("my1")   
insert into test (��������) values ("my2") 
insert into test (��������) values ("my3") 
insert into test (��������) values ("my4") 
SET DELETED ON

GOTO RECORD 2
DELETE IN test
COUNT TO m.nCounter
i=m.nCounter

LOCATE FOR �������� = '������' 
DO WHILE FOUND( )
   m.nCounter=m.nCounter-1
   m.cNew = "NoMy"+LTRIM(STR(i-m.nCounter))
   replace �������� WITH m.cNew
   BROWSE
   CONTINUE
ENDDO
 browse