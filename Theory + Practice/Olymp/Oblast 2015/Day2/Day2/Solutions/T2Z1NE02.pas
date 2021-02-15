{Kutas Dmitry 11 MGOL T2Z1NE02}
VAR
  a,b,i,k:longint;
  s,t:ansistring;
BEGIN
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);

  k:=0;

  readln(s);
  read(t);

  a:=length(s);
  b:=length(t);

  while (a>0) and (b>0) do
  begin
    if s[a]=t[b] then inc(k)
      else break;
    dec(a);
    dec(b);
  end;

  writeln(k);

  close(input);
  close(output);
END.