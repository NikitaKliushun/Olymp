{Макаревич Тарас Сергеевич, Молодечно, 11 класс, задача 3}
program T1Z3NB08;

var
  f1, f2 : text;
  a : array[0..100000] of byte;
  b, c, d, f, cnt, flag, good : array[0..100] of longint;
  gen, num : array[0..100] of longint;
  i, n, m, s, max, flag1 : longint;

procedure Count(s : longint);
  var
    i, j, size : longint;
  begin
    for i:=1 to 100 do
      d[i]:=0;
    for i:=1 to 100 do
      flag[i]:=0;
    for i:=1 to s do
      begin
        flag[num[i]]:=1;
        size:=0;
        fillchar(cnt, 100, 0);
        fillchar(good, 100, 0);
        flag1:=0;
        for j:=1 to n do
          if flag[a[j]] = 0
             then begin
                    inc(size);
                    d[size]:=a[j];
                    if d[size] = d[size - 1]
                       then inc(good[d[size]]);
                    inc(cnt[d[size]]);
                  end;
        for j:=1 to size do
          if cnt[d[j]] <> good[d[j]] + 1
             then flag1:=1;
        if (flag1 = 0) and (size > max)
           then max:=size;
      end;
  end;

procedure Permutations(n : longint);
  var
    i, j : longint;
  begin
    repeat
      Count(n);
      //exit;
      for i:=n - 1 downto 0 do
        if gen[i] < gen[i + 1]
           then break;
      for j:=n downto 1 do
        if gen[j] > gen[i]
           then break;
      gen[i]:=gen[i] + gen[j];
      gen[j]:=gen[i] - gen[j];
      gen[i]:=gen[i] - gen[j];
      num[i]:=num[i] + num[j];
      num[j]:=num[i] - num[j];
      num[i]:=num[i] - num[j];
      for j:=i + 1 to i + (n - i) div 2 do
        begin
          gen[j]:=gen[j] + gen[i + n + 1 - j];
          gen[i + n + 1 - j]:=gen[j] - gen[i + n + 1 - j];
          gen[j]:=gen[j] - gen[i + n + 1 - j];
          num[j]:=num[j] + num[n + i + 1 - j];
          num[n + i + 1 - j]:=num[j] - num[n + i + 1 - j];
          num[j]:=num[j] - num[n + i + 1 - j];
        end;
    until i = 0;
  end;

begin
  assign(f1, 'input.txt');
  assign(f2, 'output.txt');
  reset(f1);
  rewrite(f2);


  read(f1, n);
  s:=0;
  max:=0;
  for i:=1 to n do
    begin
      read(f1, a[i]);
      if f[a[i]] = 0
         then begin
                inc(s);
                gen[s]:=s;
                num[s]:=a[i];
                f[a[i]]:=1;
              end;
    end;
  Permutations(s);
  write(f2, max);


  close(f1);
  close(f2);
end.
