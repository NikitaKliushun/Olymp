{ Задача  : "Демократия в опасности"                     }
{ Тема    : Сортировка и поиск                           }
{ Решение : Чернушевич Игорь                             }

{$apptype console}

program Task;
var
  a           :         array [1..100000] of longint;
  i,k,s,n,j   :         longint;

procedure InputData;
begin
  Assign(Input,'Input.txt');
  ReSet(Input);
  ReadLn(n);
  for i:=1 to n do
    ReadLn(a[i]);
  ReadLn;
  ReadLn(k);
end;

procedure Quick_Sort(m,l:longint);
var
  i,j,x,w,sr:longint;
begin
  i:=m;j:=l;
  x:=a[(m+l) div 2];
  while i<=j do
    begin
      while a[i] < x do Inc(i);
      while a[j] > x do Dec(j);
      if i <= j then begin
                       w:=a[i];
                       a[i]:=a[j];
                       a[j]:=w;
                       Inc(i);
                       Dec(j);
                     end;
    end;
  if m < j then Quick_Sort(m,j);
  if i < l then Quick_Sort(i,l);
end;

procedure Sol;
begin
  Assign(Output,'Output.txt');
  ReWrite(Output);
  for i:=1 to k do
    begin
      ReadLn(j);
      WriteLn(a[j]);
    end;
  Close(Output);
end;

begin
  InputData;
  Quick_Sort(1,n);
  Sol;
end.