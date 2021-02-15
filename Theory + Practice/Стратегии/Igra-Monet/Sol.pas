var
  a      : array [1..180] of integer;
  v      : array [0..180, 1..80] of longint;
  s, min : longint;
  n, k, i, j, L : integer;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  for i:=1 to n do read(a[i]);
  read(k);
  for j:=1 to k do
    v[0,j]:=0;
  for i:=1 to n do
  begin
    s:=s+a[n-i+1];
    for j:=1 to k do
      if j > i then v[i,j]:=v[i,j-1]
               else begin
                        min:=s;
                        for L:=1 to j do
                          if v[i-L,L] < min then min:=v[i-L,L];
                        v[i,j]:=s - min;
                    end
  end;
  s:=v[n,1];
  for j:=2 to k do
    if v[n,j]>s then s:=v[n,j];
  writeln(s)
end.

