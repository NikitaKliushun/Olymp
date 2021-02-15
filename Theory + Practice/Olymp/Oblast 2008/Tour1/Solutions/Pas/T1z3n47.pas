{Бирук Андрей, г. Столбцы, Номер 47}
program T1Z3N47;
var n,m:longint;
    mas : array [1..65537] of longint;
    mas2 : array [1..65537] of longint;
    i,i2,a,cc,cc2:longint;

BEGIN
assign (input, 'input.txt'); reset (input);
assign (output, 'output.txt'); rewrite (output);

readln (n,m);

for i:=1 to n do
 begin
  mas2 [i]:=i;
 end;

for i:=1 to m do
 begin
  read (mas [i]);
 end;

for i:=1 to m do
 begin
 for i2:=1 to n do
  begin
   if mas [i]= mas2 [i2] then
    begin
     a:=i2;
     cc:= mas2 [i2];
     break;
    end;
  end;
  cc2:=mas2[1];
  mas2[1]:=cc;
  cc:=cc2;
  write (a, ' ');
  for i2:=2 to a do
   begin
    cc2:=mas2 [i2];
    mas2 [i2]:= cc;
    cc:=cc2;

   end;
 end;

close (input);
close (output);

END.
