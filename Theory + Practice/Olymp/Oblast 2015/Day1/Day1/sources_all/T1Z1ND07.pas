program n1;
var
a:array[1..100000] of byte;
b:array[1..100] of longint;
n,maxn,i,j,t,ot,k:longint;
Begin
{Масаковский Дмитрний Владимирович, Слуцк,9 класс,задача 1}
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);

read(n,k);
for i:=1 to n do
begin
read(a[i]);
inc(b[a[i]]);
if a[i]>maxn then maxn:=a[i];
end;
if k=1 then begin for i:=1 to n do write(a[i],' '); end else
                    BEGIN
for i:=1 to maxn do
 begin
  while (b[i] mod k<>0)and(b[i]<>0) do
  dec(b[i]); end;
for i:=1 to maxn do
 ot:=ot+(b[i] div k);
writeln(ot);

for i:=1 to n do
 begin
 t:=b[i] div k;
 for j:=1 to t do
  write(i,' ');
 end;

                END;
close(input);
close(output);
end.
