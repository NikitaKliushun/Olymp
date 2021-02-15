program z3;
var a:array [1..65535] of longint;
    n,m:longint;
    t,i,x,s,ch,pr:longint;
BEGIN
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(n,m);
for i:=1 to n do
a[i]:=i;
for i:=1 to m do
begin
  read(ch);
  for s:=1 to n do
   if a[s]=ch then
    begin
     write(s,' ');
     t:=ch;
     break;
    end;
     if a[s]=ch then
      begin
       for x:=s downto 2 do
       a[x]:=a[x-1];
       a[1]:=t;
      end;




end;


close(input);
close(output);
END.
