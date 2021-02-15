{Конофальский Захар Петрович, Жодино, 11 класс, задача 3}
var a:array[1..65535] of longint;
    i,m,n,b:longint;

function find(x:integer):longint;
var i,j,t,t1:integer;
begin
for i:=1 to n do
 if a[i]=x
 then begin find:=i; break; end;
t1:=a[i];
for j:=1 to i do
 begin
 t:=a[1];
 a[1]:=a[j];
 a[j]:=t;
 end;
a[1]:=t1;
end;



begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
readln(n,m);
for i:=1 to n do
a[i]:=i;
if n=1
 then for i:=1 to m do
 write(1,' ')
else for i:=1 to m-1 do
      begin
      read(b);
      write(find(b),' ');
      end;
read(b);
writeln(find(b));
end.



