{Атрохов Антон Анатольевич, Солигорск, сш№2 8"б", задача 3}
program anton;
var n,m,j,i,t:longint;
    f1,f2:text;
begin
 assign(f1,'input.txt');
 assign(f2,'output.txt');
 reset(f1);
 rewrite(f2);
 readln(f1,n,m);
 t:=3;
 for i:=5 to n do t:=t+3;
 for i:=8 to n do if i mod 2 =0 then j:=j+1;
 t:=t+j;
 j:=t-m;
 write(f2,j);

 close(f2);
 close(f1);
 end.
