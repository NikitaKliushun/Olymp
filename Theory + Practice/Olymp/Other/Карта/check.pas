Program Game;
var
  x,y:int64;
  f1,f2:text;
begin
  assign(f1,'karta.out');
  reset(f1);
  assign(f2,ParamStr(1));
  reset(f2);
  read(f1,x);
  read(f2,y);
  if x=y
     then writeln('Correct')
     else writeln('Incorrect');
  close(f1);
  close(f2);
end.