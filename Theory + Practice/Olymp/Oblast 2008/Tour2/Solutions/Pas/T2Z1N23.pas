{Начина Иван Николаевич,г.Слуцк,11 класс,задача №1}
program task1;
Var
  n,i:byte;
  isum,ikru:int64;
  a:array[1..100] of longint;

Procedure sort;
Var
  b:boolean;
  j:byte;
  x:longint;
begin
  b:=false;
  while not b do Begin
    b:=true;
    for j:=1 to n-1 do if a[j]>a[j+1] then begin
      x:=a[j];
      a[j]:=a[j+1];
      a[j+1]:=x;
      b:=false;
    end;
  end;
end;

Begin
  assign(input,'input.txt');
  reset(input);
  assign(output,'output.txt');
  rewrite(output);
  readln(n);
  for i:=1 to n do read(a[i]);
  sort;
  isum:=0;ikru:=0;
  for i:=1 to n div 2 do ikru:=ikru+a[i];
  for i:=(n div 2)+1 to n do isum:=isum+a[i];
  writeln(isum-ikru);
  close(input);
  close(output);
end.
