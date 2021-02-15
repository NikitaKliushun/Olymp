{Макаревич Тарас Сергеевич, Молодечно, 11 класс, задача 1}
program T2Z1NB08;

var
  d : array[1..100000] of integer;
  a, date : array[1..1000000] of integer;
  i, j, day, res, current, all, m, w, s, b, t : longint;
  f1, f2 : text;

begin
  assign(f1, 'input.txt');
  assign(f2, 'output.txt');
  reset(f1);
  rewrite(f2);


  read(f1, m, w);
  all:=0;
  res:=0;
  for i:=1 to m do
    begin
      read(f1, d[i]);
      inc(all, d[i]);
    end;
  read(f1, s, b, t);
  day:=s;
  for i:=1 to all do
    begin
      a[i]:=day;
      if day = w
         then day:=1
         else inc(day);
    end;
  current:=0;
  for i:=1 to m do
    begin
      for j:=1 to d[i] do
        date[current + j]:=j;
      inc(current, d[i]);
    end;
  for i:=1 to all do
    if (date[i] = t) and (a[i] = b)
        then inc(res);
  write(f2, res);


  close(f1);
  close(f2);
end.
