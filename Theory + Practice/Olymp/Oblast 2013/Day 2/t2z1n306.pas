program t2z1n306;
var a:array [1..1000] of integer;
p:array [1..1000] of integer;
x:array[1..1000] of integer;
n,k,m,z,y,i,w1,w2,w3,ka,i2,k2,k3 :integer;
f1,f2:text;
begin
m:=0;

assign(f1,'input.txt');
reset(f1);
readln(f1,n,k);
for i:=1 to n do readln(f1,a[i],p[i]);
close(f1);


for i:=1 to n do
  begin



    w2:=1;
while w2=1 do
    begin
    
  ka:=a[1];
  for i2:=2 to n do ka:=ka+a[i2];
  
    if k<ka then
      begin

      k2:=ka-k;
      if a[i]=0 then w2:=0
      else
        begin

       a[i]:=a[i]-1;
        m:=m+1;
         x[m]:=-i;
         end;
      end
    else w2:=0;

    end;

  
   w1:=1;
while w1=1 do
    begin

  ka:=a[1];
  for i2:=2 to n do ka:=ka+a[i2];

    if k>ka then
      begin

      k3:=k-ka;
      if a[i]=p[i] then w1:=0
      else
        begin

       a[i]:=a[i]+1;
        m:=m+1;
         x[m]:=i;
         end;
      end
    else w1:=0;

    end;
  
  

  end;

  assign(f2,'output.txt');
  rewrite(f2);
  writeln(f2,m);
  for i:=1 to m do writeln(f2,x[i]);

  close(f2);

end.