{Важник Артем Андреевич, г. Молодечно, 8 "А" класс, задача №1}
program T1Z1NC08;
var f1, f2:text; n, k, i, j, m, o:longint; a:byte;
KONF:array [1..100] of longint;
S:array [1..100000] of byte;
begin
assign (f1,'input.txt');
assign (f2,'output.txt');
reset (f1);
rewrite (f2);
read (f1, n, k);
for i:=1 to n do begin
                 read(f1, a);
                 KONF[a]:=KONF[a]+1;
                 end;
m:=0; i:=1; j:=1; o:=1;
while KONF[i]<>0 do begin
                 m:=m+KONF[i] div k;
                 for j:=1 to KONF[i] div k do
                          begin
                          S[o]:=i;
                          o:=o+1;
                          end;
                 i:=i+1;
                 end;
i:=1;
writeln (f2, m);
while S[i]<>0 do begin
                 write (f2, S[i], ' ');
                 i:=i+1;
                 end;
close (f1);
close (f2);
end.