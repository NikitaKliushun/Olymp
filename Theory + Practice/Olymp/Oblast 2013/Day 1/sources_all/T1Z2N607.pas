{цспежйхи мхйнкюи юкейяюмдпнбхв, лнкндевмн, 11 йкюяя, гюдювю 2}
program T1Z2N607;
var A,C,B:int64; n,n2:integer; f1, f2:text;
begin
Assign(f1,'input.txt');
Reset(f1);
Assign(f2,'output.txt');
Rewrite(f2);
read(f1,A);
read(f1,C);
b:=0;
n2:=0;
n:=1;
while b<=c do begin
b:=b+a; n:=n+1; if c mod n=0 then n2:=n2+1;end;
write(f2,n2);
close(f1);
close(f2);
end.