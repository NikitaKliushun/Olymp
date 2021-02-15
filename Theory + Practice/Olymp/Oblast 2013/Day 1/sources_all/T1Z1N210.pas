{Величко Владислав Константинович, ГУО СШ№3 г. Солигорска, 10Б класс, T1Z1N210}
Program z1;
var  j,i,n,t:longint; x,x1,x2,x3,y,y1,y2,y3:longint;
s,s1,s2:string;
a:array[1..2000] of longint;
function perevod(s:string):longint;
var s1,s2,s3:string;
x1,x2,x3,code:longint;
begin
s1:=copy(s,1,2);
s2:=copy(s,4,2);
s3:=copy(s,7,2);
val(s1,x1,code);
val(s2,x2,code);
val(s3,x3,code);
perevod:=x1*3600+x2*60+x3;
end;
function doverep(x:longint):string;
var x1,x2,x3:longint;
s1,s2,s3:string;
begin
x1:=x div 3600;
x:=x mod 3600;
x2:=x div 60;
x3:=x mod 60;
str(x1,s1);
str(x2,s2);
str(x3,s3);
if x1<10 then s1:='0'+s1;
if x2<10 then s2:='0'+s2;
if x3<10 then s3:='0'+s3;
doverep:=s1+':'+s2+':'+s3;
end;
BEGIN
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,t);
for i:=1 to n*2 do
  begin
  readln(s);
  a[i]:=perevod(s);
  end;
for i:=1 to n*2 do
  for j:=1 to n*2-i do
    if a[j]>a[j+1] then
      begin
      x:=a[j];
      a[j]:=a[j+1];
      a[j+1]:=x;
      end;
for i:=1 to n*2 do
  if a[i]>0 then
    begin
    j:=i;
    while a[i]+t<>a[j] do inc(j);
    s1:=doverep(a[i]);
    s2:=doverep(a[j]);
    writeln(s1,'-',s2);
    a[i]:=-1;
    a[j]:=-1;
    end;
close(input);
close(output);
END.
