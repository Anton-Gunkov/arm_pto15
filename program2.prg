create cursor test (nazvanie C(50))  
  insert into test values ("Первая строка")  
  insert into test values ("Первая строка еще раз")  
  Index On nazvanie tag nazvanie  
    
  set filter to nazvanie = "Первая строка"  
    
  set exact on  
  go top  
  browse title 'exact ON'  
    
  set exact off  
  go top  
  browse title 'exact OFF'