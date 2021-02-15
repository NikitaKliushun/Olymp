var
d:array[1..100005] of longint;
i,j,k,x,m,w,s,b,t,sum:longint;
begin

assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(m,w);
for i:=1 to m do
 read(d[i]);
readln;
 readln(s,b,t);
 if b-s<0
  then
   x:=w-s+b+1
  else
   x:=b-s+1;
   i:=1;
   sum:=d[1];
  if x>d[1]
  then begin
        while x>sum do
        begin
        i:=i+1;
        sum:=sum+d[i];
        end;
        sum:=sum-d[i];

        x:=x mod sum;
       end;
 sum:=0;
 while i<=m do
  begin
  if (t-x) mod w=0
   then k:=k+1;
  sum:=0;
 if x+w>d[i]
 then
  begin
   while sum<w+x do
    begin
     sum:=sum+d[i];
     i:=i+1;
     if i-1>m
      then
       begin
       writeln(k);
       halt;
       close(input);
       close(output);
       end;

    end;
   i:=i-1;
   sum:=sum-d[i];
   x:=(x+w) mod sum;
  end
 else
  begin
  x:=(((d[i]-x) div w+1) * w+x) mod d[i];
  i:=i+1;



  end;
 end;

 writeln(k);
 close(input);
 close(output);
 end.







































