{Макаревич Тарас Сергеевич, Молодечно, 11 класс, задача 2}
program T2Z2NB08;

var
  ps, h, b : array[1..3001] of longint;
  i, j, n, m, flag : longint;
  f1, f2 : text;

procedure SOLVE20;
  var
    i, j : longint;
  begin
    for i:=1 to n do
      for j:=i + 1 to n do
       if h[1] + b[i] < h[2] + b[j]
          then begin
                 write(f2, i, ' ', j);
                 exit;
               end;
    write(f2, -1);
  end;

procedure SOLVE40;
  var
    i, j, k : longint;
  begin
    for i:=1 to n do
      for j:=i + 1 to n do
        for k:=j + 1 to n do
          if (h[1] + b[i] < h[2] + b[j]) and (h[2] + b[j] < h[3] + b[k])
             then begin
                    write(f2, i, ' ', j, ' ', k);
                    exit;
                  end;
    write(f2, -1);
  end;

function Check : boolean;
  var
    i : longint;
  begin
    for i:=m - 1 downto 1 do
      if h[i] + b[ps[i]] >= h[i + 1] + b[ps[i + 1]]
         then begin
                Check:=false;
                exit;
              end;
    Check:=true;
  end;

procedure BF(p : longint);
  var
    i : longint;
  begin
    if flag = 1
       then exit;
    if Check
       then begin
              flag:=1;
              for i:=1 to m do
                write(f2, ps[i], ' ');
              exit;
            end;
     if flag = 1
           then exit;
    while ps[p] <= ps[p + 1] do
      begin
        if flag = 1
           then exit;
        if ps[p] + 1 = ps[p + 1]
           then begin

                  ps[p]:=p;
                  exit;
                end;
        if flag = 1
           then exit;
        inc(ps[p]);
        if p = 1
           then begin
                  if Check
                      then begin
                              flag:=1;
                              for i:=1 to m do
                                write(f2, ps[i], ' ');
                        exit;
                      end;
                end
           else Bf(p - 1);
         if flag = 1
           then exit;
      end;
  end;


begin
  assign(f1, 'input.txt');
  assign(f2, 'output.txt');
  reset(f1);
  rewrite(f2);


  read(f1, m, n);
  for i:=1 to m do
    read(f1, h[i]);
  for i:=1 to m do
    ps[i]:=i;
  flag:=0;
  ps[m + 1]:=n + 1;
  for i:=1 to n do
    read(f1, b[i]);
  if m = 2
     then SOLVE20
     else if m = 3
             then SOLVE40
             else begin

                    //writeln;
                    BF(m);
                    if flag = 0
                       then write(f2, -1);
                  end;



  close(f1);
  close(f2);
end.
