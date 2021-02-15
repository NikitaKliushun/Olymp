//Чуров Алексей Валерьевич,г.Солигорск,9г,1
program T2Z1NE05;
var f1,f2:text;
s,t:string;
i,j,n,st:integer;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,s);
readln(f1,t);
i:=length(s);
j:=length(t);
while (s[i]=t[j]) and (st=0) do begin
n:=n+1;
i:=i-1;
j:=j-1;
if (i=0) or (j=0) then begin
i:=1;
j:=1;
st:=1;
end;
end;
writeln(f2,n);
close(f1);
close(f2);
end.