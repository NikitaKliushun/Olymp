//Стельмачёнок Максим Олегович, г. Молодечно, 11 класс, задача 3
Program T1Z3NE08;
var
  i,j,n,m,l,max,kol:longint;
  a:array[0..10000000] of byte;
  b:array[0..10000000] of byte;
  t:integer;
  l1,l2,x:longint;
Begin
  Assign(input,'input.txt');
  Reset(input);
  Assign(output,'output.txt');
  Rewrite(output);

  Read(n,m);
  l1:=0;
  for i:=1 to n do
    Begin
      Read(x);
      l1:=l1+x;
    end;
  l1:=l1-1;
  l2:=0;
  for j:=1 to m do
    Begin
      Read(x);
      l2:=l2+x;
    end;
  l2:=l2-1;
  fillchar(a,sizeof(a),0);
  fillchar(b,sizeof(b),0);
  Reset(input);
  Readln;

  t:=1;
  l:=l1;
  for i:=1 to n do
    Begin
      Read(x);
      for j:=l downto l-x+1 do
        a[j]:=t;
      t:=abs(t-1);
      l:=l-x;
    end;
  t:=1;
  l:=l2;
  for i:=1 to m do
    Begin
      Read(x);
      for j:=l downto l-x+1 do
        b[j]:=t;
      t:=abs(t-1);
      l:=l-x;
    end;

  if l1>l2
    then max:=l1
    else max:=l2;

  for i:=max downto 0 do
    if a[i]=b[i]
      then a[i]:=0
      else a[i]:=1;

  l1:=max;
  while (l1>0) and (a[l1]=0) do
    l1:=l1-1;
{  for i:=l1 downto 0 do
    Write(a[i]);
  Writeln;}
  if l1>0
    then while l1>=0 do
           Begin
             kol:=1;
             while (l1>0) and (a[l1]=a[l1-1]) do
               Begin
                 kol:=kol+1;
                 l1:=l1-1;
               end;
             l1:=l1-1;
             Write(kol,' ');
           end;

  Close(input);
  Close(output);
end.