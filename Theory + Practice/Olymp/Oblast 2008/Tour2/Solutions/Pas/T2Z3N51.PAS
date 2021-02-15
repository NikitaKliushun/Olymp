{Chopchits Alexander Sergeevich Soligorskiy raion 9'"B" z3}
program t2z3n51;
 var f1,f2:text;
   kf,ee,e,kol,kof,q,i,j,n,m:longint;
   a:array[1..200,1..2]of longint;
 begin
assign(f1,'input.txt');
reset(f1);
read(f1,n);
read(f1,m);
readln(f1);

 for i:=1 to n do
 begin
   for j:=1 to 2 do
   read(f1,a[i,j]);
   readln(f1);
     end;
 close(f1);

  kol:=0;

  for i:=1 to n do
  begin
  if (a[i,1]=1) and (a[i,2]=n)
  then
  kol:=kol+1;
  end;
  e:=4;
  ee:=n div 4;
     kf:=ee*6;
 if n=4
 then
 kf:=4;

 assign(f2,'output.txt');
 rewrite(f2);
 write(f2,kf);
 close(f2);


 end.