//Ћукша ƒмитрий ёрьевич, ѕуховичский район, 9 класс, 1
var s,t:string;
i,j,k:integer;
f1,f2:text;
begin
assign(f1,'input.txt');
reset(f1);
assign(f2,'output.txt');
rewrite(f2);

readln(f1,s);
readln(f1,t);

i:=length(s);
j:=length(t);
k:=0;

while (t[j]=s[i]) and (i<>0) and (j<>0) do
begin
     k:=k+1;
     i:=i-1;
     j:=j-1;
end;

writeln(f2,k);

close(f1);
close(f2);
end.