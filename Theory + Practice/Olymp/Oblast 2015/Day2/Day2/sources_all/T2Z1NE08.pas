//Стельмачёнок Максим Олегович, г. Молодечно, 11 класс, задача 1
Program T2Z1NE08;
var
  a,b:array[1..101000] of char;
  l1,l2:longint;
  i,kol:longint;
Begin
  Assign(input,'input.txt');
  Reset(input);
  Assign(output,'output.txt');
  Rewrite(output);

  i:=1;
  While not(eoln) do
    Begin
      Read(a[i]);
      i:=i+1;
    end;
  l1:=i-1;
  Readln;
  i:=1;
  While not(eoln) do
    Begin
      Read(b[i]);
      i:=i+1;
    end;
  l2:=i-1;

  kol:=0;
  While (l1>0) and (l2>0) and (a[l1]=b[l2]) do
    Begin
      l1:=l1-1;
      l2:=l2-1;
      kol:=kol+1;
    end;

  Write(kol);

  Close(input);
  Close(output);
end.

