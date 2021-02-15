{ Задача. Нечестная игра.
  Тема : Выигрышная стратегия
(C) Чернушевич Игорь }

{$A+,B-,D+,E+,F-,G-,I-,L-,N-,O-,P-,Q-,R-,S-,T-,V-,X-}
{$M 16384,0,655360}

program Task;
var
  a        :         array [1..200,1..200] of byte;
  f        :         text;
  n,k,i,j  :         integer;
  fl       :         boolean;

procedure InputData;
begin
  Assign(f,'Input.txt');
  ReSet(f);
  ReadLn(f,n,k);
  Close(f);
end;

function Hod(x,y:integer):byte;
var
  q,w : integer;
begin
  Hod:=1;
  for q:=1 to y do
    for w:=1 to q+1 do
      if (x-y)-w > 0 then
                        if a[x-y,w] = 1 then begin
                                               Hod:=0;
                                               Exit;
                                             end;
end;

procedure Solve;
begin
  a[1,1]:=0;
  for i:=2 to n do
    for j:=1 to i-1 do
      a[i,j]:=Hod(i,j);
end;

procedure OutputData;
begin
  Assign(f,'Output.txt');
  ReWrite(f);
  fl:=false;
  for j:=1 to k do
    if a[n,j] = 1 then begin
                         Write(f,j,' ');
                         fl:=true;
                       end;
  if Not fl then WriteLn(f,0)
            else WriteLn(f);
  Close(f);
end;

begin
  InputData;
  Solve;
  OutputData;
end.