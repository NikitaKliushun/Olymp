{Важник Артем Анреевич, г. Молодечно, 8 "А", задача №1}
program T2Z1NC08;
var f1, f2:text; s, t:ansistring;
k, i, sd, td, j:longint;
begin
assign (f1, 'input.txt');
assign (f2, 'output.txt');
reset (f1);
rewrite (f2);
readln (f1, s); sd:=length (s);
read (f1, t); td:=length (t);
j:=sd; i:=td;
 while s[j]=t[i] do
                  begin
                  i:=i-1;
                  j:=j-1;
                  k:=k+1;
                  end;
write (f2, k);
close (f1);
close (f2);
end.
