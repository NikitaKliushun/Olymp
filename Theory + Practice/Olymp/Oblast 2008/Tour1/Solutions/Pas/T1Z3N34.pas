//удовиченко алексей г.Столбцы 8кл. №3
program z1;
var n,m,kol,i,i1,i2,i3,j,j1:longint;
    a,b:array[1..66000]of longint;
BEGIN
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
   readln(m,n);
   kol:=1;
  for i1:=1 to m do
     begin
       b[i1]:=kol;
       inc(kol);
     end;
  for i2:=1 to n do
     begin
       read(a[i2]);
     end;
{  for i3:=1 to n do
     begin
       pos[i1]:=kol;
       inc(kol);
     end;}

   for i:=1 to n do
     begin
        for j1:= 1 to m do
           if b[j1]=a[i] then begin write(j1,' ');break; end;

      for j:=j1 downto 2 do
         b[j]:=b[j-1];
         b[1]:=a[i];
     end;


 close(input);
 close(output);
END.