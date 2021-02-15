{Belchikov Anatoliy sergeevich,minskiy rayon,11,N2}
var
a,c,k,i:longint;
f1,f2:text;
begin
assign(f1,'input.txt');
assign(f2,'output.txt');
reset(f1);
rewrite(f2);
read(f1,a,c);
k:=0;
for i:=a to c do
if (c mod i=0) and (i mod a=0) then k:=k+1;
write(f2,k);
close(f1);
close(f2);
end.
