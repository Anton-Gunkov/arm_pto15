create cursor test (nazvanie C(50))  
  insert into test values ("������ ������")  
  insert into test values ("������ ������ ��� ���")  
  Index On nazvanie tag nazvanie  
    
  set filter to nazvanie = "������ ������"  
    
  set exact on  
  go top  
  browse title 'exact ON'  
    
  set exact off  
  go top  
  browse title 'exact OFF'