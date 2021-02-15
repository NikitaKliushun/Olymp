{Davidovich Vadim Vitalievich, Molodechno, gimnasia N7, 11"B" klass, Zadacha 2 "Christmas Tree"}
program T2Z2N105;
var
  fI,fO:text;
  n:longint;
  k:longint;
  i:longint;
begin
  assign(fI,'input.txt');
  assign(fO,'output.txt');
  reset(fI);
  rewrite(fO);
  readln(n,k);
  {======================}
  writeln(fO,n);
  for i:=1 to n do
    writeln(fO,i);
  close(fI);
  close(fO);
End.