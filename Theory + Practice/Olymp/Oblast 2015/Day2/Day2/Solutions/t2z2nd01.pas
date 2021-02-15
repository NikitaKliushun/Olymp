 {Данченко Евгений Анатольевич, г.Солигорск, 8 класс, z2}
program t2z2nd01;
 var kv,ki,k,d:longint;
     f1,f2:text;
     i:integer;
 begin
      
 assign(f1,'input.txt');
 reset(f1);
 assign(f2,'output.txt');
 rewrite(f2);
 

 read(f1,d);
  i:=1;
   while (i<=1000)and(k=0)do
   begin
    if i*i*i=d then k:=1;
    if i*i=d then k:=(i*i*i)div d;
    i:=i+1;
   end;
     if k=0 then
      k:=d*d;
   write(f2,k);
   

   close(f1);
   close(f2);
  end.
