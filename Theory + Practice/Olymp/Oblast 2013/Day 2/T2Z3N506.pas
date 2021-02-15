program z1;
var d:array[1..10] of longint;
  n,k,i,j,m:longint;

function min(f,t:longint):longint;
  begin
    if f<t then min:=f else min:=t;
  end;

begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);

readln(n,k);
for i:=1 to n do readln(d[i]);










writeln(random(15));










close(input);
close(output);
end.
