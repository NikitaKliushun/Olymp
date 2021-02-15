Program t1z1n306;
var i,i1,i2,t,n,n2,th,tm,ts,h1,k,b,d:integer;

s: array [1..2000] of integer;
m: array [1..2000] of integer;
h: array [1..2000] of integer;
st: array [1..2000] of string;
sum: array [1..2000] of integer;
x: array[1..2000] of integer;

f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
readln(f1,n,t);
n2:= n*2;
for i:=1 to n2 do readln(f1,st[i]);
for i2:=1 to  n2 do
begin
h[i2]:=strtoint( st[i2][1]+st[i2][2]);
m[i2]:=strtoint(st[i2][4]+st[i2][5]);
s[i2]:=strtoint(st[i2][7]+st[i2][8]);
end;
for i:= 1 to n2 do sum[i]:=(((h[i]*60)+m[i])*60)+s[i];
assign(f2,'output.txt');
rewrite(f2);


for i:=1 to n2 do
begin
  if x[i]=1 then i:=i+1
  else
    begin
    d:=sum[i]-t;
    b:=sum[i]+t;
    for i1:=1 to n2 do
      begin
      if sum[i1]=d then
        begin
        
        writeln(f2,st[i1],'-',st[i]);
        
        x[i]:=1;
        x[i1]:=1;
        end;
      end;
        //  h[i],':',m[i],':',s[i]
      for i1:=1 to n2 do
      begin
      if sum[i1]=b then
        begin
        writeln(f2,st[i],'-',st[i1]);
        x[i]:=1;
        x[i1]:=1;
        end;
      end;
    end;
   end;



close(f2);




// h[1],' ', m[1],' ',s[1]
//h1:= strtoint( st[1][1]+st[1][2]);
//writeln (st[4]);





close(f1);







end.
