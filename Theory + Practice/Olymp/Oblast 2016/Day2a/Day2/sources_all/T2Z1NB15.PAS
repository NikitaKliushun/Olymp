{Karasik Simon, Borovliany gumnasium, 11 klass, NB15}
const
  MAXN=100009;
var
  f1, f2:text;
  m, w:longint;
  d:array[1..MAXN] of longint;
  s, b , t:longint;
  ///
  res:longint;
  i :longint;


Procedure read_data;
var
  i:longint;
Begin
   read(f1, m, w);
   for i:=1 to m do
     read(f1, d[i]);
   read(f1, s, b, t);
End;

Function dofw (md, bd:longint):longint;
Begin
  dofw:=(md mod w) + bd;
    if dofw<>w then
      dofw:= dofw mod w;
End;

Procedure solve;
var
  i:longint;
Begin
  res:=0;
  for i:=1 to m do begin
  //  writeln(f2, s);

  //  writeln(f2, dofw(12, s));

    if (d[i]>=t) and (dofw(t-1, s)=b) then
      inc (res);


    s:=dofw(d[i], s);
  end;

  write(f2, res);
End;

BEGIN
  assign(f1, 'input.txt'); reset(f1);
  assign(f2, 'output.txt'); rewrite(f2);

  read_data;
  solve;



  close(f1);
  close(f2);
END.

