{Атрохов Антон Анатольевич, Солигорск, сш№2 8"б" класс/,задача 2}
program anton;
var d,a:array[1..100] of longint;
    n,m,k,t,i,c,j,u:longint;
    f1,f2:text;
begin
 assign(f1,'input.txt');
 assign(f2,'output.txt');
 reset(f1);
 rewrite(f2);
 readln(f1,n,k);

 for i:=1 to n do read(f1,d[i]);
 for i:=1 to n do a[i]:=d[i];
 i:=1;
 while i<n do
  begin
  if d[i]>d[i+1] then begin
                      c:=d[i];
                      d[i]:=d[i+1];
                      d[i+1]:=c;
                      i:=1;

                      end
                 else i:=i+1;
  end;
  if k mod 2<>0 then m:=k+1
                else m:=k;

   writeln(f2,m);
  m:=m div 2;

  for i:=m to n-m do
  begin
   for j:=1 to n do if d[i]=a[j] then

  write(f2,j,' ');
  end;
 close(f2);
 close(f1);
 end.
