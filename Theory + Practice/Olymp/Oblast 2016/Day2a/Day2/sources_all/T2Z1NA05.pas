{Barkovsky Nikolay Anatolevich,Boloshin,10,1}
var t,b,m,w,i,q:longint;
    a:array[1..100000,1..2] of longint;
begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
 readln(m,w);
 for i:=1 to m do
  begin
   read(a[i,1]);
  end;
 read(a[1,2],b,t);
 b:=b mod w;
 for i:=2 to m do
  begin
   a[i,2]:=(a[i-1,2]+(a[i-1,1] mod w)) mod w;
  end;
 for i:=1 to m do
  if ((a[i,2]+(t mod w)-1) mod w=b) and (t<a[i,1])
   then inc(q);
 write(q);
 close(input);
 close(output);
end.