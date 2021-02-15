var n,k,max,i,j,s:longint;
    a:array[1..100000]of longint;
    b:array[1..2000]of longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
readln(n,k);
max:=0;
for i:=1 to n do
  begin
  read(a[i]);
  if a[i]>max then max:=a[i];
  end;
for i:=1 to n do
  inc(b[a[i]]);
for i:=1 to max do
  begin
  b[i]:=b[i] div k;
  inc(s,b[i]);
  end;
writeln(s);
for i:=1 to max do
  for j:=1 to b[i] do
    write(i,' ');
close(input); close(output);
end.