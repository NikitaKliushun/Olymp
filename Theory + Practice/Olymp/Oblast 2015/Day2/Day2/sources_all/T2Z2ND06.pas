// Атрохов А.А. 10 класс СШ 2 Солигорск З.2
program z2t2nd06;
label 1;
var i,d,d1,n1,n:longint;
    f1,f2:text;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,d);
n:=2;
d1:=d;
n1:=n*n*n;
1:while (d1<n1) do
 begin
 d1:=d1+d;
 end;
if n1<>d1 then begin
              n:=n+1;
              n1:=n*n*n;
              goto 1;
              end
         else begin
              write(f2,d1 div d);
              end;
close(f2);
close(f1);
end.
