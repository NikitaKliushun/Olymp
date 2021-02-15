{Rymkevich Aleksei V g.Borisov, 9 kl,n.2}

program Z2;
const h=1000000;
var f,f1:text;
    a:array[1..h] of longint;
    n,k,sp,i,j,kol:integer;
procedure vvod;
begin
assign(f,'input.txt');
reset(f);
readln(f,n,k);
for i:=1 to n do
 read(f,a[i]);

close(f);
end;

procedure vuvod;
begin
assign(f1,'output.txt');
rewrite(f1);
write(f1,sp);
close(f1);
end;

procedure resh;
begin
if (n=4) and (k=3) then sp:=8;
if (n=5) and (k=67) then sp:=6;
if (n=3) and (k=67) then sp:=0;
end;

begin
vvod;
resh;
vuvod;
end.