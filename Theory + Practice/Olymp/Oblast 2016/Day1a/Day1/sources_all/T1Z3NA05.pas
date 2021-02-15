{Барковский Николай Анатольевич,г. Воложин,10,3}
var a:array[1..100] of longint;
    n,i,max,q:longint;
begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 readln(n);
 i:=1;
 while i<=n do
  begin
   read(q);
   inc(a[q]);
   inc(i);
  end;
 for i:=1 to n do
  if a[i]>max
   then max:=a[i];
 write(max);
 close(input);
 close(output);
end.