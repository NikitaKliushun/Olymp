program zz1;
var a,b,c,i,j,n:int64;


begin
  assign(input,'input.txt');
  assign(output,'output.txt');
  reset(input);
  rewrite(output);

  read (a,c);

  i:=1;
  while (b<c) do
  begin
    b:=a*i;
    if c mod b = 0 then
      begin
        inc(n);
      end;
    inc(i);
  end;

  write(n);

  close(input);
  close(output);
end.
