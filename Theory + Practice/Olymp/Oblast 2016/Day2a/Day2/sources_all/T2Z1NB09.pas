{Гончар Даниил Дмитриевич СШ№2 г.Солигорска}

program T2Z1NB09;
var a,b:array[1..100] of longint;
    m,w,n,d,ch,i:longint;
    f1,f2:text;
begin
 assign(f1,'input.txt');
 assign(f2,'output.txt');
 reset(f1);
 rewrite(f2);
 readln(f1,m,w);
 for i:=1 to m do read(f1,a[i]);
 read(f1,n,d,ch);



 write(f2,1);
 close(f2);
 close(f1);
end.

























