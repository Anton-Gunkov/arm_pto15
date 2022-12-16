SET DELETED ON
CLEAR
LOCAL m.cNazv
create cursor test (nazvanie C(50), Fortest n(5))  
  insert into test (nazvanie, Fortest) values ("my1", 1)  
  insert into test (nazvanie, Fortest) values ("my2", 2)   
  insert into test (nazvanie, Fortest) values ("my3", 3)
  insert into test (nazvanie, Fortest) values ("my4", 4)
  insert into test (nazvanie, Fortest) values ("my5", 55)  
*  Index On nazvanie tag nazvanie  
SET FILTER TO
GO TOP 
BROWSE
? RECCOUNT()
GO TOP


DELETE FOR nazvanie='my4'
REPLACE nazvanie WITH "z" FOR nazvanie ="my3" 
BROWSE

SET FILTER TO nazvanie = 'my1'
BROWSE 
REPLACE nazvanie WITH "z"
BROWSE 

IF nazvanie = 'z'
   replace nazvanie WITH "zzzz"
ELSE exit
ENDIF 

*SET FILTER TO nazvanie # ''
*DELETE FOR nazvanie = "my4"       
* browse 

BROWSE

  ? RECCOUNT()

  