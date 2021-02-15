{ Задача  : "Демократия в опасности"                     }
{ Тема    : Сортировка и поиск                           }
{ Решение : Чернушевич Игорь                             }

program Task;
var
  a         :         array [1..10001] of longint;
  i,k,s     :         longint;


procedure InputData;
begin
  Assign(Input,'Input.txt');
  ReSet(Input);
  ReadLn(k);
  for i:=1 to k do
    Read(a[i]);
  Close(Input);
end;

procedure Quick_Sort(m,l:word);
var
  i,j,x,w,sr:word;
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
      s:=s + (a[i] div 2 + 1);
      if i = k div 2 + 1 then Break;
    end;
  WriteLn(s);
  Close(Output);
end;

begin
  InputData;
  Quick_Sort(1,k);
  Sol;
end.