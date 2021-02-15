program yan;
  var ar:array[1..100]of longint;
      i,j,x,y,a,b,n,m:longint; f1,f2:text;
begin
  assign(f1,'input.txt'); reset(f1);
  assign(f2,'output.txt'); rewrite(f2);
  readln(f1,n,m);
  for i:=1 to n do
    begin
      read(f1,x);
      inc(ar[x]);
    end;
  x:=0;
  for i:=1 to 100 do
    x:=x+ar[i] div m;
  writeln(f2,x);
  for i:=1 to 100 do
    for j:=1 to ar[i] div m do
      write(f2,i,' ');
  close(f1); close(f2);
end.