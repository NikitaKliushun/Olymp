{�㤨� ���� �����쥢�� �.�������� ����� 11"�" ����� ����� 1}
program t2z1nd09;
var s,t,x,y:ansistring;
i,k:integer;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);
rewrite(output);
readln(s);
readln(t);
x:='';
y:='';
for i:=length(s) downto 1 do
  x:=x+s[i];
for i:=length(t) downto 1 do
  y:=y+t[i];
i:=1;
while x[i]=y[i] do
  inc(i);
write(i-1);
close(input);
close(output);
end.