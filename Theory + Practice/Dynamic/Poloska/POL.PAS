
{ Задача  : "Полоски"                                }
{ Тема    : Рекуррентные уравнения                   }
{ Решение : Чернушевич Игорь                         }

const
    FileIn  = 'Input.txt';
    FileOut = 'Output.txt';
    MaxDl   =  120;
var
    f       :  text;
    i,n,j,d :  integer;
    a       :  array [1..1000] of integer;
    m,s     :  array [1..MaxDl,1..MaxDl] of integer;

procedure InputData;
begin
  Assign(f,FileIn);
  ReSet(f);
  ReadLn(f,n);
  for i:=1 to n do
   Read(f,a[i]);
  Close(f);
end;

procedure ZapSum(x:integer);
var
  q  :  integer;
begin
  m[i,x]:=a[x];
  s[i,x]:=a[x];
  for q:=x + 1 to n do
   s[i,q]:=s[i,q-1] + a[q];
end;

function Max(x,y:integer):integer;
begin
  if x > y then Max:=x
           else Max:=y;
end;

procedure OutData;
begin
  Assign(f,FileOut);
  ReWrite(f);
  WriteLn(f,m[1,n]);
  Close(f);
end;

begin
  InputData;
  for i:=1 to n do
   ZapSum(i);
  for d:=1 to n - 1 do
   for i:=1 to n - d do
    for j:=i+d to i + d do
     m[i,j]:=Max(a[i]+(s[i+1,j]-m[i+1,j]),a[j]+(s[i,j-1]-m[i,j-1]));
  OutData;
end.