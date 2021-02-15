program Check01;
var
  a:int64;
  b:int64;
  f1,f2:text;
begin
  assign(f1,ParamStr(1));
  reset(f1);
  assign(f2,'output.txt');
  reset(f2);
  read(f1,a);
  read(f2,b);
  if a=b
     then writeln('Correct')
     else writeln('Error: ',b,', must be ',a);
  close(f1);
  close(f2);
end.
