{Макаревич Тарас Сергеевич, Молодечно, 11 класс, задача 2}
program T1Z2NB08;

var
  f1, f2 : text;
  k, n, size, y, yy, x : int64;
  s : ansistring;
  num : array[1..100] of byte;
  number : array[1..101] of byte;
  i, j : longint;
  start, point, f, flag : longint;
  gen : array[1..101] of byte;

procedure GENERATE1(n : longint);
  var
    i, cnt : longint;
    x : uint64;
  begin
    cnt:=0;
    repeat
      for i:=1 to n + 1 do
        if gen[i] = 0
           then break
           else gen[i]:=0;
      if i > n
         then exit;
      gen[i]:=1;
      inc(cnt);
      if cnt > k
         then exit
         else begin
                x:=0;
                for i:=n downto 1 do
                  x:=x * 2 + gen[i];
                write(f2, x, ' ');
              end;
    until i > n;
  end;

procedure GENERATE2(n : longint);
  var
    i, cnt, p : longint;
    x : uint64;
  begin
    cnt:=1;
    p:=1;
    for i:=1 to size do
      if num[i] = 0
         then begin
                number[i]:=gen[p];
                inc(p);
              end
         else number[i]:=1;
    x:=0;
    for i:=size downto 1 do
      x:=x * 2 + number[i];
    write(f2, x, ' ');
    if k = 1
       then exit;
    repeat
      for i:=1 to n + 1 do
        if gen[i] = 0
           then break
           else gen[i]:=0;
      if i > n
         then exit;
    inc(cnt);
    if cnt > k
       then exit;
    gen[i]:=1;
    p:=1;
    for i:=1 to size do
      if num[i] = 0
         then begin
                number[i]:=gen[p];
                inc(p);
              end
         else number[i]:=1;
    x:=0;
    for i:=size downto 1 do
      x:=x * 2 + number[i];
    write(f2, x, ' ');
    until i > n;
  end;

begin
  assign(f1, 'input.txt');
  assign(f2, 'output.txt');
  reset(f1);
  rewrite(f2);


  read(f1, k, y);
  size:=0;
  yy:=y;
  while yy > 0 do
    begin
      inc(size);
      x:=yy mod 2;
      yy:=yy div 2;
      num[size]:=x;
    end;
  n:=0;
  for i:=1 to size do
    if num[i] = 0
       then inc(n);
  f:=1;
  for i:=1 to n do
    f:=f * 2;
  if y = 0
     then begin
            if k = 1
               then write(f2, 0)
               else if k = 2
                       then write(f2, '1 0')
                       else begin
                              n:=0;
                              while f < k do
                                begin
                                  f:=f * 2;
                                  inc(n);
                                end;
                      GENERATE1(n);
                    end;

          end
     else if f < k
             then write(f2, - 1)
             else begin
                    GENERATE2(n);
                  end;



  close(f1);
  close(f2);
end.
