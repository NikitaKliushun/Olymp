{Колячко Мария}
{г.Березино}
{9 класс}
{Задача 5}
const
  inf = 1000000;
var
 a,c:array[0..101,0..101]of integer;
 z:array[0..10001]of integer;
 i,j,x,y,N,M,K,V,Sum,p:longint;
 q:integer;

begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
  Read(N,M,V,K);
  Sum:=0;
  for i:=1 to N do
   for j:=1 to M do
     c[i,j]:=-1;
  for q:=1 to V do
   begin
    Read(x,y);
    a[x,y]:=-1;
    for i:=1 to N do
     for j:=1 to M do
      if c[i,j] = -1 then c[i,j]:=abs(i-x)+abs(j-y)
                     else if abs(i-x)+abs(j-y) < c[i,j] then c[i,j]:=abs(i-x)+abs(j-y);
   end;
  for i:=1 to k do
   Read(Z[i]);
  for i:=1 to k-1 do
   begin
     y:=i;
     for j:=i to k do
       if z[j] > z[y] then y:=j;
     q:=z[i];
     z[i]:=z[y];
     z[y]:=q;
   end;
  for q:=1 to k do
   begin
     p:=inf;
     x:=0;y:=0;
     for i:=1 to N do
       for j:=1 to M do
         if a[i,j] = 0 then if c[i,j] < p then begin
                                                 p:=c[i,j];
                                                 x:=i;y:=j;
                                               end;
     a[x,y]:=z[q];
     Inc(Sum,z[q]*p);
   end;
  writeln(Sum);
  for i:=1 to N do
   begin
     if a[i,1] < 0 then write(0)
                   else write(a[i,1]);
     for j:=2 to M do
      if a[i,j] < 0 then write(' ',0)
                    else write(' ',a[i,j]);
     writeln;
   end;
 close(input);
 close(output);
end.
