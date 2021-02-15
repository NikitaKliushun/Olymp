
program T1Z4;

var
  f1, f2 : text;
  a : array[1..2000, 1..2000] of integer;
  i, j, n, flag, flag1, k, l, m, min, lmin, move : longint;

begin
  assign(f1, 'input.txt');
  assign(f2, 'output.txt');
  reset(f1);
  rewrite(f2);


  read(f1, n, k);
  min:=maxlongint;
  for i:=1 to n do
    for j:=1 to k do
      read(f1, a[i, j]);
  for i:=1 to n do
    for j:=1 to k do
      begin
        move:=0;
        flag1:=0;
        for l:=1 to n do
          if l <> i
             then begin
                    flag:=0;
                    lmin:=maxlongint;
                    for m:=1 to k do
                      if a[l, m] = a[i, j]
                         then begin
                                flag:=1;
                                if abs(m - j) < lmin
                                   then lmin:=abs(m - j);
                                if k - (abs(m - j) + 1) + 1 < lmin
                                   then lmin:=k - (abs(m - j) + 1) + 1;
                              end;
                    if flag = 1
                       then inc(move, lmin)
                       else begin
                              flag1:=1;
                              break;
                            end;
                  end;
        if (flag1 = 0) and (move < min)
           then min:=move;

      end;
  if min = maxlongint
     then write(f2, -1)
     else write(f2, min);


  close(f1);
  close(f2);
end.
