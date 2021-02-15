{Терехов Константин Николаевич г. Борисов Задача 2}
program t1z2n305;
var a,c:int64;
n, i, x:int64;
begin
  Assign(input, 'input.txt');
  Reset(input);
  Assign(output, 'output.txt');
  ReWrite(output);

  readln(input, a, c);
  n:=0;
  if (a=c) then
  begin
    n:=1
  end else begin
    x:=c div 2;
    i:=a;
    while (i<=x) do
    begin
     if (c mod i=0) then inc(n);
     i:=i+a;
    end;
    n:=n+1;//sam c

  end;
  write(output, n);

  close(input);
  close(output);

end.
