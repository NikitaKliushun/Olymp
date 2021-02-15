//Иванов Денис Сергеевич,минский район,11 ,z1
program T2Z1ND03;
var f1,f2:text;
i,m,k:longint;
s,t:string;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
readln(f1,s);
read(f1,t);
k:=length(s);
if length(t)<k then k:=length(t);
for i:=0 to k do
begin
if s[length(s)-i]=t[length(t)-i] then m:=m+1
else break;
end;
write(f2,m);
close(f1);
close(f2);
end.
