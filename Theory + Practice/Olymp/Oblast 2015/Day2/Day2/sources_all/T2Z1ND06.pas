//Атрохов Антон Анатольевич 10 класс СШ 2 Солигорск З.1
program t2z1nd06;
var k:longint;
    s1,s2:ansistring;
    f1,f2:text;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
readln(f1,s1);
read(f1,s2);

 s1:='q'+s1;
 s2:='n'+s2;
while s1[length(s1)]=s2[length(s2)] do
 begin
 delete(s1,length(s1),1);
 delete(s2,length(s2),1);
 k:=k+1;
 end;

write(f2,k);
close(f2);
close(f1);
end.
