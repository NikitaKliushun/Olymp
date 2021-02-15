{Колячко Мария Николаевна}
{Березино, 8 класс}
{Задача 2}
uses math;
var
  a,b,x,y,k,f,i,J:longint;
  kol:int64;
  d:array[0..10000,0..10000]of byte;

begin
 assign(input,'input.txt');
 reset(input);
 assign(output,'output.txt');
 rewrite(output);
   read(a,b);
   x:=min(a,b);
   y:=max(a,b);
   k:=a+b;
   f:=k mod 2;
   for i:=1 to k do
    for j:=1 to k div i do
     if i*j div 2 <=x then
       if i*j div 2 + f <= y then
         if d[i,j] = 0 then
                          begin
                           inc(kol);
                           d[i,j]:=1;
                           d[j,i]:=1;
                          end;
   write(kol);
 close(input);
 close(output);
end.
