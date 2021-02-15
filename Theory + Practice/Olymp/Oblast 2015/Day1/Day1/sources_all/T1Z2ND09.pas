Program T1Z2ND09;
var a,b,k,q,r,c,a1,b1:longint;
i,j:integer;
z:array[1..1000,1..1000]of byte;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(a,b);
k:=0;
r:=1;
c:=1;
while (r*c<=a+b)and(r<=c) do
begin
 a1:=0;
 b1:=0;
 for i:=1 to r do
   for j:=1 to c do
    if i mod 2=1 then
      z[i,j]:=(j mod 2)+1 else
                           if j mod 2=1 then
                             z[i,j]:=1 else z[i,j]:=2;
 for i:=1 to r do
   for j:=1 to c do
     if z[i,j]=1 then a1:=a1+1 else b1:=b1+1;
 if (a1<=a)and(b1<=b) then k:=k+1;
 inc(c);
 if r*c>a+b then
   begin
     inc(r);
     c:=r;
   end;
end;
write(k);
close(input);
close(output);
end.
