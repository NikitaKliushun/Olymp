{NB15. Karasik Simon, Borovlyany gumnasium,11 klass}
const
  MAXN=100009;
var
  f1, f2:text;
  a:array[1..100, 0..MAXN] of longint;
  l:array[1..100] of longint;
  seq:array[1..MAXN] of longint;
  i, n, x, j, k:longint;
  max, maxp, int, intp, res:longint;

{Function cnull(l, r:longint):boolean;
var
  i , count:longint;
Begin
  if (l=r) then begin
    if (seq[l]<>0) then
      cnull:=false
    else
      cnull:=true;
  end;
  else begin

    for i:=l to r do
      if seq[i]=0 then
        inc(count);

    if(l-r+1=count) then
      cnull:=true
    else
      cnull:=false;
  end;

End;  }

BEGIN
  assign(f1, 'input.txt'); reset(f1);
  assign(f2, 'output.txt'); rewrite(f2);

  read(f1, n);

  for i:=1 to  100 do begin
  //  a[1, 0]:=0;
    l[i]:=0;
  end;
  for i:=1 to n do begin
    read(f1, x);

    seq[i]:=x;
    inc(l[x]);
    a[x, l[x]]:=i;
  end;


  res:=n;
  repeat

    max:=res;
    for i:=1 to 100 do begin
      if (l[i]>=2) and (-a[i, 1] + a[i, l[i]]>1) then begin
        for j:=a[i, 1]+1 to a[i, l[i]]-1 do
         if (seq[j]<>i) and (seq[j]<>0) then
           if (l[seq[j]]<max) then  begin
             if (l[seq[j]]<l[i]) then begin
               max:=l[seq[j]];
               maxp:=seq[j];
             end
             else begin
               max:=l[i];
               maxp:=i;
             end;
           end;

      end;
    end;

    if max<res then begin
      i:=maxp;
     // writeln(f2, max, ' ',  maxp);
      res:=res-max;
      for j:=1 to l[i] do
        seq[a[i, j]]:=0;
      a[i, 0]:=0;
    end;
  until res=max;

 // for i:=1 to n do
   // write(f2, seq[i], ' ')

  {for i:=1 to 100 do begin
    for j:=0 to n do
      write(f2, a[i, j], ' ');
    writeln(f2);
  end;}
  writeln(f2, res);

 close(f1);
 close(f2);

END.
