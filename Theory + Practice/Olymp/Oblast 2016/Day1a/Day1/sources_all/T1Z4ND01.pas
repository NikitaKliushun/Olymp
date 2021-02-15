//Рожнов Максим Вячеславович 11"А", Гимназия №1г.Слуцка
program z4;
var a:array[1..100,-100..100]of integer;
i,j,k,l,min,n,p:longint;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n,k);
min:=99999;
if n=2 then begin
    for i:=1 to N do begin
     for j:= 1 to K do begin
       read(a[i,j]);
       a[i,-k+j]:=a[i,j];
     end;
    end;
for i:=1 to K do begin
 for j:=1-K to K do begin
 if a[1,i]=a[n,j]then if (i-j>0)and((i-j)<min)then min:=i-j;
 end;
 end;



for i:=1 to k do begin
 a[1,i]:=l;
 for j:=1 to n do begin
 if a[j,i]<>l then inc(p);
 end;
 if p=0 then break;
 end;
if p=0 then writeln('0') else if min<>99999 then writeln(min);











end
else writeln('-1');
close(input);
close(output);
end.
