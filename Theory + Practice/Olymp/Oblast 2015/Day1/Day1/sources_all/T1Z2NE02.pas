 {Kutas Dmitry Sergeewits MGOL 11 }
VAR a,b,r,min,n:longint;

BEGIN
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);

  read(a,b);
  if a<b then min:=a else min:=b;

  r:=1;
  n:=0;

  if a<>b then
  begin
    while (r*r) <= (2*min+1) do
    begin
      n:=n+((2*min+1) div r)-r+1;
      inc(r);
    end;
  end


  else    {a=b}
  begin
    while (r*r) <= (2*min) do
    begin
      n:=n+((2*min) div r)-r+1;
      inc(r);
    end;
  end;

  write(n);

  close(input);
  close(output);
END.
