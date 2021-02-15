{Карнаух Максим Михайлович, г. Молодечно, 9А, T2Z1}
program z1;
var f1,f2:text;
s,t:string;
k,i,j:longint;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);
read(f1,s);
readln(f1);
read(f1,t);
i:=length(s);
j:=length(t);
k:=0;
while s[i]=t[j] do
  begin
  if s[i]=t[j] then k:=k+1;
  i:=i-1;
  j:=j-1;
  end;
write(f2,k);
close(f1);
close(f2);
end.
