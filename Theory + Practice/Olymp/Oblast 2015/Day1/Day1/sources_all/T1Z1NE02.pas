 {Kutas Dmitry Sergeewitsch MGOL 11 }

VAR
  n,k,i,b,m:longint;
  a:array [1..100] of longint;


BEGIN
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);


  for i:=1 to 100  do
    a[i]:=0;

  readln(n,k);

  for i:=1 to n do
  begin
    read(b);
    inc(a[b]);
  end;

  m:=0;

  for i:=1 to 100 do
  begin
    n:=a[i] div k;
    a[i]:=n;
    m:=m+n;
  end;

  writeln(m);

  if m>0 then
   for i:=1 to 100 do
    begin
      if a[i]>0 then
        for k:=1 to a[i] do
          write (i,' ');
    end;

  close(input);
  close(output);
END.
