{Начина Иван Николаевич,г.Слуцк,11 класс,задача №2}
Program task2;
Var
  a:array[1..51] of longint;
  b:array[1..51] of byte;
  count1,count0:int64;
  i,n,lock:byte;
  k:integer;
  finalcount:longint;
Begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  readln(n,k);
  for i:=1 to n do read(a[i]);
  finalcount:=0;count0:=0;
  for i:=1 to n do count0:=count0+a[i];
  if (count0 div 2)+1<k then Begin
    writeln('0');
    close(input);
    close(output);
    halt;
  end;
  while lock<>n do Begin
    inc(b[1]);lock:=0;
    for i:=1 to n do if b[i]=2 then Begin
      b[i]:=0;
      inc(b[i+1]);
    end;count0:=0;count1:=0;
    for i:=1 to n do if b[i]=1 then count1:=count1+a[i];
    for i:=1 to n do if b[i]=0 then count0:=count0+a[i];
    if (count1>=k) and (count0>=k) then inc(finalcount);
    for i:=1 to n do lock:=lock+b[i];
  end;
  writeln(finalcount);
  close(input);
  close(output);
end.
