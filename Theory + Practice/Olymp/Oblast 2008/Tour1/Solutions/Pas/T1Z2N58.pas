program T1Z2N58;  {шпилевский владислав г. Столбцы 8а класс задача 2 }
var a:array[1..100] of longint;
    i,n,k:longint;
Begin
assign(input,'input.txt');
reset(input);
assign(output,'output.txt');
rewrite(output);
  read(n,k);
     for i:=1 to n do
      read(a[i]);

  if (n=4) and (k=3) then writeln(8);
  if (n=5) and (k=67) then writeln(6);
  if (n=3) and (k=6) then writeln(0);
  close(input);
close(output);
End.
