PRogram T2Z2NB04;
var n,j,d,i,b,i1:longint;
a:real;
f1,f2:text;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
read(f1,d);
n:=d;
while b<>1 do
begin
a:=sqrt(d);
j:=j+1;
i:=i-2;
  while i*i*i<=d do
  begin
    if d mod 2=0 then i:=i+2
                 else i:=i+1;
    if i*i*i=d then begin
                         write(f2,j);
                         b:=1;
                     end;
  end;
  d:=d+n;
end;
Close(f1);
Close(f2);
end.

