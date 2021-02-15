var
  f1, f2:text;
  s1, s2:AnsiString;
  l1, l2:longint;
  i, com:longint;


BEGIN
  assign(f1, 'input.txt');
  reset(f1);
  assign(f2, 'output.txt');
  rewrite(f2);

  com:=0;

  readln(f1, s1);
  readln(f1, s2);
  l1:=length(s1);
  l2:=length(s2);

  while (com<l1) and (com<l2)
    and (s1[l1-com]=s2[l2-com]) do
    inc(com);

  write(f2, com);

  close(f1);
  close(f2);
END.
