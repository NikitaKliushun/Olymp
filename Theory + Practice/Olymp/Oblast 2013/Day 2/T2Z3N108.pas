program zzz;
 var n,m:longint;
 a:array [1..100000] of longint;
 i,j,x,y:longint;

begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);

 readln(n,m);

 for i:=1 to m do
 begin
  read(x,y);
  a[x]:=y;
 end;

 write((n div 2)+(m div 2));

 close(input);
 close(output);
end.
