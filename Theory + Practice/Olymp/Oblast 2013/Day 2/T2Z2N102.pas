{Козелько Никита Сергеевич, город Солигорск, 9 класс, задача 2}
var a, b:array[1..200000] of longint;
    n, k, i, min, mini, s:longint;
procedure qsort(l ,r:longint);
 var i, j, x, cc:longint;
 begin
 i:=l; j:=r; x:=a[l+random(r-l+1)];
 while i<j do
  begin
  while a[i]<x do inc(i);
  while a[j]>x do dec(j);
  if i<=j then
   begin
   cc:=a[i]; a[i]:=a[j]; a[j]:=cc;
   cc:=b[i]; b[i]:=b[j]; b[j]:=cc;
   inc(i);dec(j);
   end;
  end;
  if i<r then qsort(i, r);
  if l<j then qsort(l, j);
 end;
begin
assign(input, 'input.txt');reset(input);
assign(output, 'output.txt');rewrite(output);
readln(n, k);
for i:=1 to n do
 begin
 b[i]:=i;
 read(a[i]);
 end;
qsort(1, n);
min:=-1;
for i:=1 to (n-k+1) do
 begin
  s:=a[i+k-1]-a[i];
  if min=(-1) then begin
                   mini:=i;
                   min:=s;
                   end;
  if s<min then begin
                mini:=i;
                min:=s;
                end;

 end;
writeln(k);
for i:=mini to (mini+k-1) do
 write(b[i], ' ');
{for i:=1 to n do
 write(a[i], ' ');
writeln;
for i:=1 to n do
 write(b[i], ' '); }
close(input);close(output);
end.