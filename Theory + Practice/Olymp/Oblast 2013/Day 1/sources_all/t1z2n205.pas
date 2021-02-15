{Юнцевич Михатил Олегович Минский район 11 з.2}
Program z2;
Var a,b,c,i,kol:longint;
    f1,f2:text;
Begin
  assign(f1,'input.txt');
  reset(f1);
  assign(f2,'output.txt');
  rewrite(f2);
  readln(f1,a,c);
  kol:=0;
  for i:=a to c do
    begin
    b:=i;
    if (c mod b=0) and (b mod a=0) then kol:=kol+1;
    end;
  writeln(f2,kol);
  close(f1);
  close(f2);
end.
