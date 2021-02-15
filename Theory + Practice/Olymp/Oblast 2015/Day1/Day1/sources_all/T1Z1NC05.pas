//Никитин Илья Сергеевич,г.Столбцы, 10'Г' класс, T1Z1NC05
var
b,a:array[1..100] of longint;
f1,f2:text;
n,m,k,i:longint;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
readln(f1,n,k);
for i:=1 to n do
    begin
     readln(f1,a[i]);
    end;
if i mod 2>=0 then m:=i div k
              else begin writeln(f2,0); exit;   end;
for i:=1 to m do
    begin
     b[i]:=a[i];
    end;
writeln(f2,m);
writeln(f2,b[i]);
close(f1);
close(f2);
end.
