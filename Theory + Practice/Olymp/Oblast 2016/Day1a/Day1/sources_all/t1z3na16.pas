//Атрохов А.А. Солигорск. 2 школа. 1 тур. 3 задача. Номер участника А16
program zadachka3;
var a:array[1..100] of byte;
    n,i,k1,k2:longint;



begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do read(a[i]);
for i:=1 to n do if a[i]=1 then k1:=k1+1
                           else k2:=k2+1;
if k1>k2 then for i:=1 to k1 do write(1,' ')
         else for i:=1 to k2 do write(2,' ');


close(output);
close(input);
end.
