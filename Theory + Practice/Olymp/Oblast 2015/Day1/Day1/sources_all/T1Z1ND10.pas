{Бузун Владислав Романович, г.Слуцк, 9класс, задача номер 1}
program z1;
var
c,a:array[0..101]of integer;
k,j,x,i,max,n,m,otv:longint;
begin
fillchar(a,sizeof(a),0);
fillchar(c,sizeof(c),0);
j:=0;
x:=0;
i:=0;
max:=0;
n:=0;
m:=0;
otv:=0;
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(n,m);
for i:=1 to n do
 begin
  read(x);
  if x>max then max:=x;
  inc(a[x]);
 end;

for i:=1 to max do
 begin
  if a[i]<m then a[i]:=0;
  if a[i]=m then begin inc(otv); a[i]:=0; inc(c[i]); end;
  if a[i] div m=0 then begin inc(c[i],a[i] div m); otv:=otv+(a[i] div m); a[i]:=0; end;
 end;

for i:=1 to max do
 begin
  while a[i]>m do
   begin
    if a[i] mod m<>0 then dec(a[i]);
    if a[i] mod m=0 then begin inc(c[i],a[i] div m); otv:=otv+(a[i] div m); a[i]:=0; end;
  end;
 end;

write(otv);
if otv<>0 then
 begin
  writeln;
  for i:=1 to max do
   for j:=1 to c[i] do
    if k=0 then begin write(i); inc(k); end else begin inc(k); write(' ',i); end;
 end;

close(input);
close(output);
end.
