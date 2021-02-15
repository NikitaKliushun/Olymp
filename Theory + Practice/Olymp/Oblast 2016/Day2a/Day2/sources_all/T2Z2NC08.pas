{Курашевич Максим Сергеевич г.Солигорск 11 класс 2 задача}
Program T2Z2NC08;
var a,b,d,q:array [1..3000] of integer;
m,k,k1,t1,b1,d1,i,j,i1,r,z:integer;
f1,f2:text;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
read(f1,m,k);
for i:=1 to m do
  read(f1,a[i]);
for i:=1 to k do
begin
  read(f1,b[i]);
  d[i]:=b[i];
end;
k1:=k;
Repeat
t1:=0;
for i:=1 to k1-1 do
  if d[i]>d[i+1] then begin
                           b1:=d[i];
                           d[i]:=d[i+1];
                           d[i+1]:=b1;
                           t1:=i;
                      end;
  k1:=t1;
Until t1=0;

a[1]:=a[1]+d[1];
i1:=0; j:=0;
while (j<>1) do
begin
  i1:=i1+1;
  if d[1]=b[i1] then begin
                        j:=1;
                        b[i1]:=0;
                        d[1]:=0;
                        q[1]:=i1;
                   end;
end;
for i:=1 to m do
begin
  if a[i]>a[i+1] then begin 
                           j:=0;
                           while (i1<=k) and (j<>1) do
                           begin
                             i1:=i1+1;
                             r:=a[i]-a[i+1];
                             if d[i1]>r then begin
                                                  j:=1;
                                                  a[i+1]:=a[i+1]+d[i1];
                                                  d1:=d[i1];
                                                  d[i1]:=0;                                                 
                                             end;
                           end;
                      end;
  j:=0; i1:=0;                   
  while (i1<=k) and (j<>1) do
  begin
    i1:=i1+1;
    if d1=b[i1] then begin
                          j:=1;
                          b[i1]:=0;
                          q[i+1]:=i1;
                     end;
  end;
end;
for i:=1 to m-1 do
  if a[i]<a[i+1] then z:=z+1;
if z=m-1 then for i:=1 to m do
                write(f2,q[i],' ')
         else write(f2,'-1');
close(f1);
close(f2);
end.