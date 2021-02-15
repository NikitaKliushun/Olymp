program t2z2n306;
var m,k,n,i,i2,w1,w2,ki,s,g:integer;
d:array [1..100000] of longint;
d2:array [1..100000] of longint;
di:array [1..100000] of longint;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
readln(f1,n,k);
for i:=1 to n do read(f1,d[i]);
close(f1);
w1:=1;
while w1=1 do
 begin

  for i:=1 to n do
    begin
    for i2:=1 to n do
      begin
      for g:=1 to n do
      begin
      if g=i2 then  i2:=i2+1;
      end;
      
         if i=i2 then i2:=i2+1;
         

           writeln(d[i]);
           if i2=n then //
            begin
            i2:=i2+1;
            i:=i+1;


           
           end;
           
           
         if d[i]>d[i2] then
          begin
            i2:=i2+1;
            i:=i+1;
            end
            else
            begin
            s:=s+1;
            di[s]:=i;
            d2[s]:=d[i];

            writeln(d[i]);
            end;
      end;
    end;
    if d2[n]>0 then w1:=0;

 end;


//for i:=1 to n do writeln(d2[i]);





end.