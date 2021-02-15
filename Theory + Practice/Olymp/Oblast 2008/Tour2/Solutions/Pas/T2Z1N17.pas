{Chudinov Vyacheslav Borisov Luceum 11'}
var i,j,n,x,kush,luck,krup: longint;
    a:array[1..100] of longint;
begin
 i:=1;
 assign(input,'input.txt');
 assign(output,'output.txt');
 reset(input);
 rewrite(output);
 readln(input,n);
 while not(eoln) do
  begin
   read(a[i]);
   inc(i);
  end;
 for i:=1 to n do
  for j:=1 to i do
   if a[j]<a[i] then
    begin
     x:=a[i];
     a[i]:=a[j];
     a[j]:=x;
    end;
 for i:=1 to n do
  if i<=n div 2 then inc(kush,a[i])
   else inc(krup,a[i]);
 luck:=kush-krup;
 write(output,luck);
 close(input);
 close(output);
end.
