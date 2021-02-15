//Головащенко Александр, МГОЛ, задача2
var
  a,c,i,otvet: int64;
begin
  assign(input, 'input.txt');
  reset(input);
  assign(output, 'output.txt');
  rewrite(output);

  read(a,c);
  otvet:= 1;

  i:= a;
  while i<= c div 2 do begin
    if c mod i = 0 then
      inc(otvet);
    inc(i, a);
  end;

  write(otvet);

  close(input);
  close(output);
end.
