program z1;
var d:array[1..100000] of longint;
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
for i:=1 to n do read(d[i]);


writeln(k);
for i:=1 to k do write(random(n)+1,' ');

close(input);
close(output);
end.
