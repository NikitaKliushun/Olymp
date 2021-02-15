program z3;
var n:integer;
    k,a,x:longint;
    f1,f2:text;
begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);

  read(f1,n,k);
  read(f1,a);
  x:=1;
  if (a=1) and (k>=2) then x:=2;
  if (a=2) and (k>=3) then x:=3;
  if (a=2) and (k=2) then x:=2;
  if (a=3) and (k>=2) then x:=3;
  if (a=4) and (k>=3) then x:=3;
  if (a=4) and (k=2) then x:=2;
  if (a=5) and (k>=2) then x:=3;
  if (a=6) and (k>=4) then x:=3;
  if (a=6) and ((k=3) or (k=2)) then x:=2;
  if (a=7) and (k>=2) then x:=2;
  if (a=9) and (k>=4) then x:=3;
  if (a=9) and ((k=2) or (k=3)) then x:=2;

  write(f2,x);



  close(f1);
  close(f2);
end.