{Начина Иван Николаевич,г.Слуцк,11 класс,задача №2}
program task2;
Var
  n,k,lw,rw,count,scount,i:longint;
  a:array[1..1000000] of char;
Begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  readln(n,k);count:=0;
  for i:=1 to n do read(a[i]);
  lw:=1;
  while lw<>n+1 do begin
    rw:=lw;
    while rw<>n+1 do Begin
      scount:=0;
      for i:=lw to rw do if a[rw]=a[i] then inc(scount);
      inc(rw);
      if scount>k then rw:=n+1 else inc(count);
    end;
    inc(lw);
  end;
  writeln(count);
  close(input);
  close(output);
end.
