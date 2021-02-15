//Boben Vyachaslav Gymnasia 3 8 klass Borisov
var f1,f2:text;
    Num:array[1..100000] of longint;
    i,curL,n,k:longint;

begin
assign(f1,'input.txt'); reset(f1);
assign(f2,'output.txt'); rewrite(f2);

readln(f1,n,k);

for i:=1 to n do
  read(f1,Num[i]);

if k=n then writeln(f2,n);//  :D

close(f1);
close(f2);
end.
