var n,i,s:longint; a:array[1..100]of longint;
procedure Qsort(l,r:longint);
 var x,lt,rt,t:longint;
 begin
  x:=a[random(r-l+1)+l];
  rt:=r;lt:=l;
  repeat
   while a[lt]<x do
    lt:=lt+1;
   while a[rt]>x do
    rt:=rt-1;
   if rt>=lt
    then
     begin
      t:=a[lt];
      a[lt]:=a[rt];
      a[rt]:=t;
      rt:=rt-1;
      lt:=lt+1;
     end;
  until lt>rt;
  if lt<r then Qsort(lt,r);
  if rt>l then Qsort(l,rt);
 end;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
randomize;
readln(n);
for i:=1 to n do
  read(a[i]);
  Qsort(1,n);
for i:=(n div 2+1) to n do
  s:=s+a[i];
for i:=1 to n div 2 do
  s:=s-a[i];
writeln(s);
close(input);
close(output);
end.