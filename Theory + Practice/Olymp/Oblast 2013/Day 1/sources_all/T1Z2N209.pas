//Филипович Антон Федорович, МГОЛ, 10 А класс
var a,c,b,k:int64;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);

  read(a,c);

  b:=a;   k:=0;

  while b<=c do
    begin
      if (c mod b=0)and(b mod a=0)
        then inc(k);
      inc(b);
    end;

  write(k);

  close(input);
  close(output);
end.