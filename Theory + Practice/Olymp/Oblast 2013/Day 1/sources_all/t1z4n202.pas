{Ефимович Максим Геннадьевич, г.Солигорск, 9 "Б" класс, №1}
var n,m,k,i,j,f,f3,ans,q:longint;
    a:array[1..200000] of longint;
    c:array [1..200000] of longint;
    kol:array[1..200000] of longint;
    f1,f2:text;
begin
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);
readln(f1,n,m,k);
for i:=1 to m do
  begin
  read(f1,a[i]);
  kol[a[i]]:=1;
  end;
readln(f1);
for i:=1 to n do
  read(f1,c[i]);
readln(f1);
readln(f1,f);
f3:=0;
for i:=1 to m do
  begin
  while (a[i]<>f) and (f3<>1) do
    begin
    q:=c[a[i]];
    if kol[q]<k then begin
                           inc(kol[c[a[i]]]);
                           a[i]:=c[a[i]];
                           end
                      else f3:=1;
    end;
  if a[i]=f then inc(ans);
  f3:=0;
  end;
writeln(f2,ans);
close(f1);
close(f2);
end.
