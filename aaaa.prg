LOCAL i, m.cNew
create cursor test (Название C(50))    
insert into test (Название) values ("my1")   
insert into test (Название) values ("my2") 
insert into test (Название) values ("my3") 
insert into test (Название) values ("my4") 
SET DELETED ON

GOTO RECORD 2
DELETE IN test
COUNT TO m.nCounter
i=m.nCounter

LOCATE FOR Название = 'ктулху' 
DO WHILE FOUND( )
   m.nCounter=m.nCounter-1
   m.cNew = "NoMy"+LTRIM(STR(i-m.nCounter))
   replace Название WITH m.cNew
   BROWSE
   CONTINUE
ENDDO
 browse