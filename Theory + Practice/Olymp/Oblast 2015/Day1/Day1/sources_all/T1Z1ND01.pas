{Данченко Евгений Анатольевич, г.Солигорск, 8 класс, z1}
program t1z1nd01;
 var n,k,b,i,j:longint;
     l:integer;
     f1,f2:text;
     a:array[1..100]OF INTEGER;
  begin

  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  readln(f1,n,k);
  for i:= 1 to n do
   begin
    read(f1,b);
    a[B]:=A[B]+1;
    l:=l+1;
   end;
    b:=0;
   for i:=1 to l  do
    begin
    a[i]:=a[i] div k;
    b:=b+a[i];
    end;

   writeln(f2,b);
   if b>0 then
    for i:=1 TO L DO
     if a[i]>0 then
      for j:=1 to a[i] do
      write(f2,i);

   close (f1);
   close (f2);

   end.


