//Задача № 3, Лебедев Даниил Петрович, г. Борисов, 8 класс
program z3;
var
  n, m, k, i, j, s1, s2, c1, c0: byte;
  a, b, c: array [1..100] of byte;
  s: ansistring;
  f1, f2: text;
begin
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  FillChar(a, sizeof(a), 0);
  FillChar(b, sizeof(b), 0);
  FillChar(c, sizeof(c), 0);

  readln(f1, n, m);
  s:='';
  for i:=1 to n do
  begin
    read(f1, k);
    if i mod 2 =1
    then for j:=1 to k do
           s:=s+'1'
    else for j:=1 to k do
           s:=s+'0';
  end;
  s1:=Length(s);
  for i:=s1 downto 1 do
  begin
    if s[i]='1' then a[s1-i+1]:=1
                else a[s1-i+1]:=0;
  end;
  s:='';
  for i:=1 to m do
  begin
    read(f1,k);
    if i mod 2 =1
    then for j:=1 to k do
           s:=s+'1'
    else for j:=1 to k do
           s:=s+'0';
  end;
  s2:=Length(s);
  for i:=s2 downto 1 do
  begin
    if s[i]='1' then b[s2-i+1]:=1
                else b[s2-i+1]:=0;
  end;
  if s1<s2 then n:=s2
           else n:=s1;
  for i:=1 to n do
    c[i]:=a[i] xor b[i];
  for i:=1 to n do
    write(c[i], ' ');
  while c[n]<>1 do dec(n);
  c1:=0; c0:=0; c[n+1]:=1;
  for i:=n downto 1 do
  begin
  if (c[i]=1) and (c[i+1]=1) then inc(c1);
  if (c[i]=0) and (c[i+1]=0) then inc(c0);
  if (c[i]=0) and (c[i+1]=1) then begin write(f2, c1, ' '); c1:=0; c0:=1; end;
  if (c[i]=1) and (c[i+1]=0) then begin write(f2, c0, ' '); c0:=0; c1:=1; end;
  if i=1
  then if (c0=0)
       then write(f2, c1)
       else write(f2, c0);
  end;
  close(f1);
  close(f2);
end.
