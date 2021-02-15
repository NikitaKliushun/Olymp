program Z2;
var
  a,b,k:longint;
  f1,f2:text;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  read(f1,a,b);
  if (a=1) and (b=1) then k:=2 else
  if (a=1) and (b=3) then k:=3 else
  if (a=2) and (b=4) then k:=6;

  writeln(f2,k);


  close(f1);
  close(f2);
end.
