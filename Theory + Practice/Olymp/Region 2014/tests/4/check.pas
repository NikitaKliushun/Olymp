program Check01;
var
  a1, b1 : int64;
  a2, b2 : int64;
  f1, f2 : text;
begin
  assign(f1,ParamStr(1));
  reset(f1);
  assign(f2,'output.txt');
  reset(f2);
  read(f1,a1);
  if a1<>0
     then read(f1,b1);
  read(f2,a2);
  if a2<>0
     then read(f2,b2);

  if (a1=a2) and (b1=b2)
     then writeln('Correct')
     else writeln('Error: Answer must be ',a1,' ',b1);
  close(f1);
  close(f2);
end.
