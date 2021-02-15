{Kutas Dmitry 11 MGOL}

VAR
  p,d:longint;
  d1,st,kol:int64;

BEGIN
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);

  read(d);

  kol:=1;
  p:=2;
  st:=8;
  d1:=d;

  if d=1 then st:=1;

  while true do
  begin
    while d1>st do begin inc(p); st:=p*p*p;  end;
    if d1=st then begin write(kol); break; end;

    d1:=d1+d;
    inc(kol);

  end;

  close(input);
  close(output);
END.
