{Задача №1 Коледа Влад}
Var
a:array[1..100000]of longint;
x,s,b,t,m,w,i,p:longint;
Begin
Assign(input,'input.txt');
Reset(input);
Assign(output,'output.txt');
Rewrite(output);
Readln(m,w);
For i:=1 to m do
Read(a[i]);
Readln(s,b,t);
For i:=1 to m do
Begin
x:=b-s+1;
While x+w<a[i] do
Begin
x:=x+w;
if x=t
then p:=p+1;
end;
s:=(a[i]-x+b)mod w+1;
if s=0
then s:=w;
end;
Writeln(p);
Close(input);
Close(output);
End.
