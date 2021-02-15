program t1z2n614;
  var a,c,k,kol,i,x:int64;

begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  reset(output);

  read(a,c);
  if a=c then
    begin
      write(1);
      exit;
    end;
  i:=a;
  while i<=c do
    begin
      if c mod i=0 then
        inc(kol);
      inc(i,a);
    end;
  writeln(kol);

  close(input);
  close(output);
end.
