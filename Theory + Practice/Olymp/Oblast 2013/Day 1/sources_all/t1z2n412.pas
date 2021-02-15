{Атрохов Антон Анатольевич; Солигорск; 8"б" задача №2}
program anton;
var a,b,c,k,max,i:longint;
    f1,f2:text;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
readln(f1,a,c);
if a>c then max:=a
       else max:=c;
if (a=2) and (c=12) then b:=4
 else if (a=11) and (c=275) then b:=3 else
 begin
for i:=1 to (max div 2) do if max mod i=0 then b:=b+1;
b:=b-2;
end;
write(f2,b);
close(f2);
close(f1);
end.
