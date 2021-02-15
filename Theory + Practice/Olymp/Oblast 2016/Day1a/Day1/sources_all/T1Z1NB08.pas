{Макаревич Тарас Сергеевич, Молодечно, 11 класс, задача 1}
program asdf;

const
  vx : array[1..4] of longint = (-1, 1, 0, 0);
  vy : array[1..4] of longint = (0, 0, -1, 1);

var
  f1, f2 : text;
  a : array[1..10, 1..10] of char;
  id : array[1..10, 1..10] of longint;
  dead, q : array[1..100] of longint;
  i, j, k, n, x, y, sheap, size, flag, head, tail, color : longint;
  data : ansistring;
  ky : array['a'..'z'] of byte;
  c : char;

procedure Enqueue(x : longint);
  begin
    inc(tail);
    q[tail]:=x;
  end;

procedure Dequeue(var x : longint);
  begin
    inc(head);
    x:=q[head];
  end;

function Empty : boolean;
  begin
    Empty:=head = tail;
  end;

begin
  assign(f1, 'input.txt');
  assign(f2, 'output.txt');
  reset(f1);
  rewrite(f2);


  for i:=1 to 10 do
    for j:=1 to 10 do
      id[i, j]:=0;
  for i:=1 to 100 do
    dead[i]:=0;
  head:=0;
  tail:=0;
  color:=0;
  flag:=0;
  sheap:=0;
  for i:=1 to 10 do
    begin
      for j:=1 to 10 do
        read(f1, a[i, j]);
      readln(f1);
    end;
  ky['a']:=1;
  ky['b']:=2;
  ky['c']:=3;
  ky['d']:=4;
  ky['e']:=5;
  ky['f']:=6;
  ky['g']:=7;
  ky['h']:=8;
  ky['i']:=9;
  ky['k']:=10;
  for i:=1 to 10 do
    for j:=1 to 10 do
      if (a[i, j] = '#') and (id[i, j] = 0)
         then begin
                inc(sheap);
                inc(color);
                id[i, j]:=color;
                size:=1;
                Enqueue(i);
                Enqueue(j);
                repeat
                  Dequeue(x);
                  Dequeue(y);
                  for k:=1 to 4 do
                    if (x + vx[k] < 11) and (x + vx[k] > 0) and (y + vy[k] < 11) and (y + vy[k] > 0) and (a[x + vx[k], y + vy[k]] = '#') and (id[x + vx[k], y + vy[k]] = 0)
                       then begin
                              inc(size);
                              id[x + vx[k], y + vy[k]]:=color;
                              Enqueue(x + vx[k]);
                              Enqueue(y + vy[k]);
                            end;
                until Empty;
                dead[color]:=size;
              end;
  readln(f1, n);
  for i:=1 to n do
    begin
      readln(f1, data);
      val(copy(data, 1, pos(' ', data) - 1), x);
      c:=data[length(data)];
      y:=ky[c];
      if flag = 1
         then continue
         else if (a[x, y] = '.') or (a[x, y] = '+')
                 then writeln(f2, 'MISS')
                 else if a[x, y] = '#'
                         then begin
                                a[x, y]:='+';
                                dec(dead[id[x, y]]);
                                if dead[id[x, y]] = 0
                                   then begin
                                          dec(sheap);
                                          if sheap = 0
                                             then flag:=1;
                                          if flag = 1
                                             then writeln(f2, 'GAME OVER')
                                             else writeln(f2, 'DEAD');
                                        end
                                   else writeln(f2, 'HIT');
                              end;
    end;

  close(f1);
  close(f2);
end.
