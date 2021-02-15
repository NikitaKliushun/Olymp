{Величко Владислав Константинович, ГУО СШ№3 г. Солигорска, 10Б класс, T1Z3N210}
Program z3;
var a:array[1..400,1..400] of char;
i,i1,j,j1,n,m,k,l:integer; ans:longint; s:ansistring;
function proverka(i1,j1,i,j:integer):boolean;
var ii,ii1,jj,jj1:integer;
begin
proverka:=true;
{if i-i1=0 then
  begin
  proverka:=false;
  exit;
  end; }
for ii:=i1 to (i1+((i-i1) div 2)) do
  for jj:=j1 to j do
    if a[ii,jj]<>a[i1+i-ii,jj] then
      begin
      proverka:=false;
      exit;
      end;
end;
BEGIN
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
ans:=0;
readln(n,m);
for i:=1 to n do
  begin
  readln(s);
  for j:=1 to m do
    a[i,j]:=s[j];
  end;
{i1:=1;
j1:=1;
while i1<=n-1 do
  begin
  while j1<=m do
    begin
    i:=i1+1;
    while i<=n do
      begin
      j:=j1;
      while j<=m do
        begin
        if proverka(i1,j1,i,j)=true then inc(ans) else j:=m;
        inc(j);
        end;
      inc(i);
      end;
    inc(j1);
    end;
  inc(i1);
  end;}
for i1:=1 to n-1 do
  for j1:=1 to m do
    for i:=i1+1 to n do
      for j:=j1 to m do
        if proverka(i1,j1,i,j)=true then inc(ans);
write(ans);
close(input);
close(output);
END.
