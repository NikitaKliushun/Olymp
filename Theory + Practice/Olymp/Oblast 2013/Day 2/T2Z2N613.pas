{Шкет Никита Николаевич, г.Молодечно, 10 класс, 2 задача}
program T2Z2N613;
var a,x,y,o:array [1..100001] of longint;
    b,n,z,g,k,i,j:longint;
{procedure QSort(l,r:longint);
var i,j,x,t:longint;
begin
 i:=l;
 j:=r;
 x:=a[l+random(r-l+1)];
 repeat
  while a[i]<x do
   i:=i+1;
  while a[j]>x do
   j:=j-1;
  if a[i]>a[j] then begin
   t:=a[i];
   a[i]:=a[j];
   a[j]:=t;
   i:=i+1;
   j:=j-1;
                    end;
 until i>=j;
  writeln;         end;
  if i<r then QSort(i,r);
  if l<j then QSort(l,j);
end;}
begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);

 readln(n,k);
 for i:=1 to n do
  read(a[i]);
 for i:=1 to n do
  x[i]:=a[i];


 for i:=1 to n do
  for j:=1 to n do
   if a[j]>a[i] then begin
    b:=a[i];
    a[i]:=a[j];
    a[j]:=b;           end;


 z:=a[k]-a[1];
 g:=1;
 for i:=2 to n-k+1 do
  if a[i+k-1]-a[i]<z then begin
   z:=a[i+k-1]-a[i];
   g:=i;                  end;

 writeln(k);

 for i:=1 to n do
  y[i]:=0;
 for i:=1 to n do
  o[i]:=0;

 z:=0;
 for i:=g to g+k-1 do
  for j:=1 to n do begin
   if (y[i]=0)  and (x[j]=a[i]) and (o[j]=0) then begin
    write(j,' '); y[i]:=1; o[j]:=1;               end;
                   end;
{ for i:=1 to n do
  write(a[i],' ');}


close(input);
close(output);
end.
