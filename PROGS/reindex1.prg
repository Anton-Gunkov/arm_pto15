IF MESSAGEBOX('?? ????? ???????????????'+CHR(13)+CHR(13)+'?????????? ?', 1+32+256, '???????????') = 1

   CLOSE DATABASES ALL 
   
   DELETE FILE data\*.cdx
   COPY FILE data\ceh_new.cdx.bak TO data\ceh_new.cdx
   COPY FILE data\dskbase.cdx.bak TO data\dskbase.cdx
   COPY FILE data\komplektuxa.cdx.bak TO data\komplektuxa.cdx

   OPEN DATABASE data\arm_pto EXCLUSIVE 
   
   USE data\ceh_new IN 0 EXCLUSIVE INDEX data\ceh_new.cdx
   REINDEX 
   CLOSE INDEXES 
   CLOSE TABLES ALL
   
   USE data\dskbase IN 0 EXCLUSIVE INDEX data\dskbase.cdx
   REINDEX 
   CLOSE INDEXES 
   CLOSE TABLES ALL
   
   USE data\komplektuxa IN 0 EXCLUSIVE INDEX data\komplektuxa.cdx
   REINDEX
   CLOSE INDEXES 
   CLOSE TABLES ALL
   
   CLOSE DATABASES ALL 
   
ENDIF 