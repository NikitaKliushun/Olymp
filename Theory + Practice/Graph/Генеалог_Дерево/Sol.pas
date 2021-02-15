
{ Задача  : "Генеалогическое дерево"                     }
{ Тема    : Топологическая сортировка                    }
{ Решение : Чернушевич Игорь                             }

program Task;
const
    MaxD        =         100;
var
    m           :         array [1..MaxD,1..MaxD] of Integer;
    met         :         array [1..MaxD] of Byte;
    ot          :         array [1..MaxD] of Integer;
    i,j,n,x     :         Integer;


procedure InputData;
begin
  Assign(Input,'Input.txt');
  ReSet(Input);
  ReadLn(n);
  for i:=1 to n do
    begin
      repeat
        Read(x);
        if x <> 0 then m[i,x]:=1;
      until x = 0;
      ReadLn;
    end;
  i:=0;
end;

procedure Sol;
var
  j : Integer;

function Yes_No : Boolean;
var
  y : Integer;
begin
  Yes_No:=True;
  for y:=1 to n do
    if m[y,j] = 1 then begin
                         Yes_No:=False;
                         Exit;
                       end;
  for y:=1 to n do
    m[j,y]:=0;
end;

begin
  for j:=1 to n do
    begin
      if met[j] = 0 then
                 if Yes_No then begin
                                  Inc(i);
                                  ot[i]:=j;
                                  met[j]:=1;
                                  Sol;
                                end;
    end;
end;

procedure OutputData;
begin
  Assign(Output,'Output.txt');
  ReWrite(Output);
  for i:=1 to n-1 do
    Write(ot[i],' ');
  Write(ot[n]); 
  Close(Output);
end;

begin
  InputData;
  Sol;
  Close(Input);
  OutputData;
end.