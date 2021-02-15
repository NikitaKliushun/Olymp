program z5;

const
  dx: array[1..4] of integer = (-1, 0, 1, 0);
  dy: array[1..4] of integer = (0, 1, 0, -1);
  omax = 16000;

var
  f1, f2: text;
  a: array[0..101, 0..101] of shortint;
  n, m, i, j : smallint;
  x, y, t, z : shortint;
  s, v, k : longint;
  o: array [0.. omax] of shortint;
  o1, o2: integer;
  h: array[1..10000] of shortint;
  h1: integer;

procedure In_O(x: shortint);
begin
  o[o1] := x;
  o1 := o1 + 1;
  if o1 > omax then o1 := 0;
end;

procedure Out_O(var x: shortint);
begin
  x := o[o2];
    //o[o2]:=0;
  o2 := o2 + 1;
  if o2 > omax then o2 := 0;
end;

procedure In_K(x: shortint);
var
  i: longint;
begin
  h1 := h1 + 1; i := h1;
  while (i > 1) and (h[i div 2] < x) do
  begin
    h[i] := h[i div 2];
    i := i div 2;
  end;
  h[i] := x;  
end;

procedure Out_K(var x: shortint);
var
  i : longint;
  t : shortint;
begin
  x := h[1];
  t := h[h1];
  h1 := h1 - 1;
  i := 1;
  while (i * 2 <= h1) and (h[i * 2] > t) or (i * 2 + 1 <= h1) and (h[i * 2 + 1] > t) do
    if (i * 2 + 1 > h1) or (i * 2 + 1 <= h1) and (h[i * 2] > h[i * 2 + 1])
    then begin
      h[i] := h[i * 2];
      i := i * 2;
    end
    else begin
      h[i] := h[i * 2 + 1];
      i := i * 2 + 1;
    end;
  h[i] := t;
end;

begin
  assign(f1, 'input.txt'); reset(f1);
  assign(f2, 'output.txt'); rewrite(f2);

  read(f1, n, m, v, k);

  for i := 1 to n do
    for j := 1 to m do
      a[i, j] := -1;
  for i := 0 to n + 1 do
  begin
    a[i, 0] := 0; a[i, m + 1] := 0;
  end;
  for j := 0 to m + 1 do
  begin
    a[0, j] := 0; a[n + 1, j] := 0;
  end;
  
  o1 := 0; o2 := 0;
  for i := 1 to v do
  begin
    read(f1, x, y);
    In_O(x); In_O(y); In_O(1); a[x, y] := 0;
  end;
  h1 := 0;
  for i := 1 to k do
  begin
    read(f1, x);
    In_K(x);
  end;
  
  s := 0;
  while (o1 <> o2) and (h1 > 0) do
  begin
    Out_O(x); Out_O(y); Out_O(t);
    for i := 1 to 4 do
      if a[x + dx[i], y + dy[i]] = -1
        then if h1 > 0
        then begin
          Out_K(z);
          a[x + dx[i], y + dy[i]] := z;
          s := s + z * t;
          In_O(x + dx[i]); In_O(y + dy[i]); In_O(t + 1);
        end
        else break;
  end;
  
  writeln(f2,s);  

{  for i := 1 to n do
  begin
    for j := 1 to m do
      if a[i, j] > 0 
        then write(f2,a[i, j], ' ')
      else write(f2,0, ' ');
    writeln(f2,'');     
  end; }      

  close(f1); close(f2);
end.