program T1Z1NB18;
var a:array[1..10] of string;
 x:array[1..100] of char; x1:array[1..100] of integer; y:array[1..100] of integer;
t1,t2:text;
i,j,n,k:byte;
begin
assign (t1, 'input.txt');
assign (t2, 'output.txt');
reset (t1);
rewrite (t2);
for i:=1 to 10 do
readln (t1, a[i]);
readln (t1,n);
for i:=1 to n do
readln (t1,y[i],x[i]);
for i:=1 to n do
begin
 if x[i]='a' then x1[i]:=1;
 if x[i]='b' then x1[i]:=2;
 if x[i]='c' then x1[i]:=3;
 if x[i]='d' then x1[i]:=4;
 if x[i]='e' then x1[i]:=5;
 if x[i]='f' then x1[i]:=6;
 if x[i]='g' then x1[i]:=7;
 if x[i]='h' then x1[i]:=8;
 if x[i]='i' then x1[i]:=9;
 if x[i]='k' then x1[i]:=10;
 end;
 writeln (t2, 'GAME OVER');
close (t1);
close (t2);
end.

