{цспежйхи мхйнкюи юкейяюмдпнбхв, лнкндевмн, 11 йкюяя, гюдювю 1}
program T1Z1N607;
var N,T, i,i2,i3,i4:integer; f1,f2:text; Q:array [1..2000]of string;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
read(f1,N);
read(f1,T);
i:=1;
while not Eof(f1) do begin
readln(f1,Q[i]); if not Eof(f1) then i:=i+1;
end;
for i3:=1 to i do begin
for i4:=1 to i do begin
if Q[i3]<Q[i4]  then swap(Q[i3],Q[i4]);end;end;
i2:=2;
while i>=2 do begin
writeln(f2,Q[i2],'-',Q[i2+1]);i2:=i2+2; i:=i-2;end;
close(f1);
close(f2);
end.