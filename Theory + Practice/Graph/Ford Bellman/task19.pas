
{ Task. ���� ����⥫쭮�� ���.       }
{ ����. ����� ��䮢. ������ ������. }
{ ��������� O(V*V*V)                    }
{ ��襭��. ����襢�� �����.            }

const
    Inf           =       100000;
var
    a             :       array [1..100,1..100] of Extended;
    i,N,q,j,k     :       LongInt;
    F             :       Boolean;

procedure InputData;
begin
    F:=False;
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(N);
    for i:=1 to N do
      for q:=1 to N do
         Read(a[i,q]);
    Close(Input);
end;

procedure Floid;
begin
    for k:=1 to N do
      for i:=1 to N do
        for j:=1 to N do
          if (a[i,k] <> Inf) and (a[k,j] <> Inf) then
            if a[i,j] > a[i,k] + a[k,j] then a[i,j]:=a[i,k] + a[k,j];
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    for i:=1 to N do
      for j:=1 to N do
        if (i = j) and (a[i,j]  < 0) then F:=True;
    if F then WriteLn('YES')   { ���� ����⥫쭮�� ��� - �� ���� �� ���設� � ᠬ� ᥡ�. ���⮬� �᫨ �� 
                                 ��������� ��᫥ �����⬠ ������ ���� ����⥫�� �᫠, � ����⥫�� 横� ����. }
         else WriteLn('NO');
    Close(Output);
end;

begin
    InputData;
    Floid;
    OutputData;
end.
