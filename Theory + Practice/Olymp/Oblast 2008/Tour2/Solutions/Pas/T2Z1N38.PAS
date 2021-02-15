{Rymcevich Aleksei V. g Boriso v 9 kl. T2Z1N38 }
program z1;
const h=100;
var n,max,maxv,i,ii,j,k,sumSH,sumKuP:longint ;
    a,b:array[1..h] of longint;

procedure vvod;
begin
assign(input,'input.txt');
reset(input);
readln(input,n);
for i:=1 to n do
 read(input,a[i]);
 close(input);
end;

procedure vuvod;
begin
assign(output,'output.txt');
rewrite(output);
write(output,maxv);
close(output);
end;

procedure resh;
begin
k:=n div 2;
for j:=1 to k do
begin
max:=0;
for i:=1 to n do
  if max<=a[i] then
  begin
  max:=a[i]; ii:=i;
   b[j]:=max;
  end;
  a[ii]:=0;
end;
sumSH:=0; SumKuP:=0;
 for i:=1 to n do
begin
SumSH:=sumSH+b[i];
sumKuP:=sumKuP+a[i];
end;
maxv:=abs(sumSH-SumKuP);
end;

begin
vvod;
resh;
vuvod;
end.
