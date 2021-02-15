
{ Задача  :  "Email"                 }
{ Тема    :   Рекуррентные уравнения }
{ Решение :   Чернушевич Игорь       }

var
    a                  :             array [1..200] of Integer;
    M                  :             array [1..200,1..200] of Byte;
    i,j,N,P,K          :             Integer;

procedure InputData;
begin
    Assign(Input,'Email.dat');
    ReSet(Input);
    Read(N);
    for i:=1 to N do
      Read(a[i]);
    Close(Input);
end;

function Min(x,y : Byte) : Byte;
begin
    if x < y then Min:=x
             else Min:=y;
end;

procedure Sol;
begin
    for i:=1 to N do
      m[i,i]:=1;
    for k:=1 to n-1 do
      for i:=1 to n-k do
        for j:=i+k to i+k do
          begin
              if a[j-1] = a[j] then m[i,j]:=m[i,j-1]
                               else m[i,j]:=m[i,j-1] + 1;
              for p:=j-1 downto i do
                if a[p] = a[j] then m[i,j]:=Min(m[i,j],m[i,p]+m[p+1,j-1]);
          end;
end;

procedure OutputData;
begin
    Assign(Output,'Email.sol');
    ReWrite(Output);
    WriteLn(m[1,N]);
    Close(Output);
end;

begin
    InputData;
    Sol;
    OutputData;
end.