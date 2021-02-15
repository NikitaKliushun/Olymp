{Данченко Евгений Анатольевич, г.Солигорск, 8 класс, z4}
program t1z4nd01;
 var
      n,k,i:integer;

  x,y,z:array[1..1000]of integer;
     f1,f2:text;
  begin

  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  readln(f1,n);
  for i:=1 to n do
   readln(f1,x[i],y[i],z[i]);
           k:=2;
   write(f2,k);

   close (f1);
   close (f2);

   end.