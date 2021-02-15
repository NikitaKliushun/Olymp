{Каменко Павел Николаевич г.Столбцы задача 3}
program z3;
var n,m,k,k2,x1,x2,y1,y2,i,j,code,ans:longint;
    a:array[1..400,1..400]of longint;
    s:array[1..400]of string;
    f:text;
    fl:boolean;
begin
assign(f,'input.txt');reset(f);
readln(f,n,m);
for i:=1 to n do
readln(f,s[i]);
close(f);
for i:=1 to n do
 for j:=1 to m do
  val(s[i][j],a[i,j],code);
for x1:=1 to n do
 for y1:=1 to m do
  for x2:=x1+1 to n do
    for y2:=y1 to m do
    begin
     fl:=true;
      for k:=x1 to (x2-x1) div 2+1 do
      for k2:=y1 to y2 do
      if a[k,k2]<>a[x2-k+1,k2]
      then begin fl:=false; break;end;
     if fl=true
     then begin ans:=ans+1;end
     else
     begin
     if not(x2=n)

     then break
     else break;
     end;
    end;
assign(f,'output.txt');
rewrite(f);
write(f,ans div 2);
close(f);



end.
