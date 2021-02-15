const
  MAXN=100009;
var
  f1, f2:text;
  i, n, m, nm, kn, tn, j, buf, co:longint;
  k, t:array[1..MAXN] of longint;
  kl, tl:array[1..MAXN] of byte;

Function max(q, w:longint):longint;
BEgin
  if q>w then
    max:=q
   else
     max:=w;
End;

BEGIN
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  fillchar(kl, sizeof(kl), 0);
  fillchar(tl, sizeof(tl), 0);
  kn:=0;
  tn:=0;

  read(f1, n, m);
  kn:=0;
  tn:=0;
  for i:=1 to n  do begin
    read(f1, k[i]);
    if i mod 2=0 then
      buf:=0
    else buf:=1;
    for j:=1 to k[i] do begin
      inc(kn);
      kl[kn]:=buf;
    end;
  end;
  for i:=1 to m do begin
    read(f1, t[i]);
    if i mod 2=0 then
      buf:=0
    else buf:=1;
    for j:=1 to t[i] do begin
      inc(tn);
      tl[tn]:=buf;
    end;
  end;

  nm:=max(kn, tn);
  for i:=1 to nm do
    tl[i]:=(tl[i]+kl[i]) mod 2;

  i:=1;
  j:=nm;
  while i>j do begin
    buf:=tl[i];
    tl[i]:=tl[j];
    tl[j]:=buf;
  end;

  while (tl[nm]=0) and (nm>1) do
    dec(nm);


  {for i:=1 to kn do
    write(f2, kl[i]);
  writeln(f2);
   for i:=1 to tn do
     write(f2, tl[i]);
   writeln(f2);}
 { for i:=nm downto 1 do
    write(f2, tl[i]);
  writeln(f2);  }
  co:=0;
  buf:=tl[nm];
  for i:=nm downto 1 do
    if tl[i]=buf then
      inc(co)
    else begin
      write(f2, co, ' ');
      buf:=tl[i];
      co:=1;
    end;

  write(f2, co);

  close(f1);
  close(f2);
END.
