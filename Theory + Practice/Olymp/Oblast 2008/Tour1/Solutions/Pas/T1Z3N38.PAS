{Rymkevich Aleksei V g.Borisov, 9 kl,n.3}

program Z3;
const h=65535;
var f,f1:text;
    n,m,kol:integer;
    a,b,c:array[1..h] of integer;
    i,j,k,d:integer;

procedure vvod;
begin
assign(f,'input.txt');
reset(f);
readln(f,n,m);
begin
for i:=1 to m do
read(f,b[i]);
end;

close(f);
end;

procedure vuvod;
begin
assign(f1,'output.txt');
rewrite(f1);
for i:=1 to m do
write(f1,c[i],' ');
close(f1);
end;

procedure resh;
begin
for i:=1 to m do
 c[i]:=0;
for i:=1 to n do
a[i]:=i;

for i:=1 to m do begin
 kol:=1;
 j:=1;

  while b[i]<>a[j] do
    if b[i]<>a[j] then  begin inc(j); inc(kol); c[i]:=kol; end;
  if b[i]=a[1] then c[i]:=1
               else
  while a[1]<>b[i] do
  for  k:=j downto 2 do
     begin  d:=a[k]; a[k]:=a[k-1]; a[k-1]:=d;     end;

 end;


end;

begin
vvod;
resh;
vuvod;
end.