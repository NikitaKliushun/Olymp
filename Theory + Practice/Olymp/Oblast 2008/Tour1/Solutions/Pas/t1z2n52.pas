{Свиpиденко Гpигоpий,11'Б, гимназия г.Дзеpжинска }
{-02}
program t1z2n52;
var  k,s,x,z:longint;
     i,j,y,n,g:byte;
     sum:int64;
     a:array[1..50] of int64;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
read(n,k);
s:=0;
for i:=1 to n do
  read(a[i]);
for i:=1 to n do
  sum:=sum+a[i];
for i:=1 to n do
begin
  x:=a[i];
  for j:=i+1 to n do
  begin
    x:=x+a[j];
    z:=sum-x;
    if (x>=k) and (z>=k) then s:=s+1;
  end;
  x:=a[i];
  {if n-i>=2 then
  for g:=1 to n-i do
    for y:=2 to n-i-g do
      For j:=y+i to n do
      begin
        x:=x+a[j];
        z:=sum-x;
        if (x>=k) and (z>=k) then s:=s+1;
      end       }
end;

s:=s*2;

writeln(s);
close(input);
close(output);
end.