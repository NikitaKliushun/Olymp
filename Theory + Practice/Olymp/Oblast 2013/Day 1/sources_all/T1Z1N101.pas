{Сафаров Руслан Валехович, г. Борисов, 11"A" класс, T1Z1N101}
Program T1Z1N101;
var f1,f2:text;
a,c:array[1..3000] of longint;
b:array[1..3000] of string;
i,j,k,y,l,n,t,x,r,max,nmax:longint;
p:boolean;
s:ansistring;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
p:=false;
while not eof(f1) do
 begin
  while (not eoln(f1)) and (p=false) do
   begin
    read(f1,n);
    readln(f1,t);
    p:=true;
   end;
  i:=i+1;
  readln(f1,b[i])
 end;
l:=i;
y:=t;
For i:=1 to l do
 begin
  s:=b[i];
  For j:=1 to length(s) do
   begin
    if s[j]<>':' then
     val(s[j],x);
    if j=1 then
     t:=x*10*3600;
    if j=2 then
     t:=t+(x*3600);
    if j=4 then
     t:=t+(x*10*60);
    if j=5 then
     t:=t+(x*60);
    if j=7 then
     t:=t+x*10;
    if j=8 then
     begin
      t:=t+x;
      a[i]:=t;
     end;
   end;
 end;
k:=i;
For i:=k downto 1 do
 begin
  max:=a[1];
  nmax:=1;
  For j:=2 to i do
   if max<a[j] then
    begin
     max:=a[j];
     nmax:=j;
    end;
   a[nmax]:=a[i];
   a[i]:=max;
 end;
r:=0;
For i:=k downto 1 do
 For j:=1 to k do
   if a[i]-a[j]=y then
    begin
     r:=r+1;
     c[r]:=a[j];
     r:=r+1;
     c[r]:=a[i];
     a[i]:=0;
     a[j]:=0;
    end;
i:=0;
while (n<>0) and (i<r) do
 begin
  i:=i+1;
  x:=c[i] div 3600;
  if x<10 then
   begin
    write(f2,'0');
    str(x,s);
    write(f2,s);
    write(f2,':');
   end
    else
     begin
      str(x,s);
      write(f2,s);
      write(f2,':');
     end;
  x:=c[i] mod 3600;
  x:=x div 60;
  if x<10 then
   begin
    write(f2,'0');
    str(x,s);
    write(f2,s);
    write(f2,':');
   end
    else
     begin
      str(x,s);
      write(f2,s);
      write(f2,':');
     end;
  x:=c[i] mod 3600;
  x:=x mod 60;
  if x<10 then
   begin
    write(f2,'0');
    str(x,s);
    write(f2,s);
    write(f2,'-');
   end
    else
     begin
      str(x,s);
      write(f2,s);
      write(f2,'-');
     end;
  i:=i+1;
  x:=c[i] div 3600;
  if x<10 then
   begin
    write(f2,'0');
    str(x,s);
    write(f2,s);
    write(f2,':');
   end
    else
     begin
      str(x,s);
      write(f2,s);
      write(f2,':');
     end;
  x:=c[i] mod 3600;
  x:=x div 60;
  if x<10 then
   begin
    write(f2,'0');
    str(x,s);
    write(f2,s);
    write(f2,':');
   end
    else
     begin
      str(x,s);
      write(f2,s);
      write(f2,':');
     end;
  x:=c[i] mod 3600;
  x:=x mod 60;
  if x<10 then
   begin
    write(f2,'0');
    str(x,s);
    write(f2,s);
   end
    else
     begin
      str(x,s);
      write(f2,s);
     end;
  writeln(f2);
  n:=n-1;
 end;
close(f1);
close(f2);
end.