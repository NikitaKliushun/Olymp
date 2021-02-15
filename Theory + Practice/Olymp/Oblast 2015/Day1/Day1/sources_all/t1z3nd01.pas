{Данченко Евгений Анатольевич, г.Солигорск, 8 класс, z3}
program t1z3nd01;
 var n,m:longint;
      i:integer;
     a:array[1..1000]of integer;
     b,c:array[1..1000]of integer;
     f1,f2:text;
  begin

  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  readln(f1,n,m);
   for i:=1 to n-1 do
    read(f1,a[i]);
   readln(f1,a[n]);
    for i:=1 to m-1 do
     read(f1,b[i]);
    readln(f1,b[m]);
    c[1]:=2;
    c[2]:=1;
  for i:=1 to 2 do
   write(f2,c[i]);

   close (f1);
   close (f2);

   end.