program T2Z1NB14;
var f1,f2:text; m,w,i,s,b,t:longint; d:array[1..100000] of longint;
    ans:int64;

procedure prosmotr(j,f:longint);
var news,nach:longint;
BEGIN
 news:=(d[j]+f) mod w;
 nach:=0;
 if b>f
  then nach:=b-f+1
  else nach:=(w-f+2)+b;
 while (nach<=d[j]) and (nach<=t) do
  begin
   if nach=t
    then inc(ans);
   nach:=nach+w;
  end;
 s:=news;
END;


BEGIN
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,m,w);
for i:=1 to m do
 read(f1,d[i]);
readln(f1,s,b,t);
close(f1);
ans:=0;
for i:=1 to m do
 prosmotr(i,s);
writeln(f2,ans);
close(f2);
END.