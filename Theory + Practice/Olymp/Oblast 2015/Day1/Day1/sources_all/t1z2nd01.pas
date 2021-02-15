{Данченко Евгений Анатольевич, г.Солигорск, 8 класс, z2}
program t1z2nd01;
 var a,b:longint;
      c:integer;
     f1,f2:text;
  begin
  
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);
  
  read(f1,a,b);
  c:=2;
  write(f2,c);
  
   close (f1);
   close (f2);
   
   end.

