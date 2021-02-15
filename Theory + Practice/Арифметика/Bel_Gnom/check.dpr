{$r+,q+,o-}
uses
  testlib, sysutils;


var
 n, i, s, ja, pa: longint;
 a, b, c: array[1..100000] of longint;
 u: array [1..100000] of boolean;


begin
  n := inf.readlongint;
  for i := 1 to n do a[i] := inf.readlongint;
  for i := 1 to n do b[i] := inf.readlongint;

  ja := ans.readlongint;
  pa := ouf.readlongint;

  if (pa = -1) then begin
    if (ja <> -1) then begin
      quit(_WA, 'Solution was not found');
    end else begin
      quit(_OK, '-1');
    end;
  end;    

  c[1] := pa;
  if (pa < 1) or (pa > n) then
  	quit(_wa, 'invalid dwarf');
  for i := 2 to n do begin
  	c[i] := ouf.readlongint;
  	if (c[i] < 1) or (c[i] > n) then
  		quit(_wa, 'invalid dwarf');
  end;

  for i := 1 to n do begin
  	if u[c[i]] then
  		quit(_wa, 'duplicate dwarf');
  	u[c[i]] := true;
  end;

  for i := 1 to n do begin
    if (i = 1) then begin
      s := b[c[i]];
    end else begin
      s := s - a[c[i]];
      if (s <= 0) then quit(_WA, 'Not all dwafrs are sleeping');
      if (b[c[i]] < s) then s := b[c[i]];       
    end;
  end;

  quit(_OK, 'ok');

end.