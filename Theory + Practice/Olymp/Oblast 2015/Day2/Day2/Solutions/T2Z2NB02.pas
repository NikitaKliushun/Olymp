//Нужна длинная арифметика?
var
  f1, f2:text;
  d:longint;
  res:int64;
  mult:int64;

BEGIN
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  read(f1, d);
  mult:=trunc( exp(ln(d)*(1/3)) )-1;

  repeat
    inc(mult);
    res:=((mult*mult*mult) - d) mod d;
  until res=0;

  res:=(((mult*mult*mult)-d) div d) +1;

  write(f2, res);

  close(f1);
  close(f2);
END.
