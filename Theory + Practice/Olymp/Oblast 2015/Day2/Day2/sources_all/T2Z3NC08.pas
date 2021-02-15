{Важник Артем Анреевич, г. Молодечно, 8 "А", задача №1}
program T2Z3NC08;
var f1, f2:text; n:byte; k, ch:longint;
begin
assign (f1, 'input.txt');
assign (f2, 'output.txt');
reset (f1);
rewrite (f2);
read (f1, n, k);
read (f1, ch);
if (ch=5) or (ch=3) or (ch=4) or (ch=2) then
    if k>=2 then write (f2, '2')
    else write (f2, '0');
if (k=0) or (ch=0) or (ch=8) then write (f2, '0');
if (ch=1) or (ch=7) then
           if k>=2 then write (f2, '1')
              else write (f2, '0');
if (ch=6) or (ch=9) then
   if k>=2 then write (f2, '2')
    else if k>=1 then write (f2, '1')
     else write (f2, '0');
if (ch>9) and (k<>0) then write (f2, '1');
close (f1);
close (f2);
end.
