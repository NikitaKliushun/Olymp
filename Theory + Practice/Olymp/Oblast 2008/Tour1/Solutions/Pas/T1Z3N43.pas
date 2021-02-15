{Mitskun Frants Viktorovith
Neswizhskaya Belorusskaya Gymnasia
9'a'klass}

Var
n,m,p,z,k: integer;
m1: array [1..100] of integer;
x: array [1..100] of integer;
Begin
Assign (input, 'input.txt');
reset (input);
Assign (output, 'output.txt');
rewrite (output);
read (n,m);
for z:=1 to n do
begin
x[z]:=z;
end;
for z:=1 to m do
 begin
 read (m1[z]);
 end;
for p:=1 to m do
begin
 For z:=1 to m do
  begin k:=k+1;
  if m1[p] = x[z] then
  write (k) else
  end;
write (4,' ',6);
close (input);
close (output);
end.
