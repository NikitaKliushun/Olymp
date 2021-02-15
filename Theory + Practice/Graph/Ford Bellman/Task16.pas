{ Task. ����⢮����� ���.              }
{ ����. ����� ��䮢. ������ ������.  }
{ ��������� O(V*V*V)                     }
{ ��襭��. ����襢�� �����.             }

const
    Infiniti      =       1E1000;  {!!!}
var
    a             :       array [1..100,1..100] of Extended;  {!!}
    b             :       array [1..100,1..100] of LongInt;
    i,N,q,j,k     :       LongInt;

procedure InputData;
begin
    Assign(Input,'Input.txt');
    ReSet(Input);
    ReadLn(N);
    for i:=1 to N do
      for q:=1 to N do
        begin
             Read(a[i,q]);
             if a[i,q] = 0 then a[i,q]:=Infiniti;
             if (i = q) and (a[i,q] > 0) then a[i,q]:=0;   { ���ࠥ� ������⥫�� ��⫨ }
        end;
    Close(Input);
end;

procedure Floid;
begin
    for k:=1 to N do
      for i:=1 to N do
        for j:=1 to N do
          if (a[i,k] <> Infiniti) and (a[k,j] <> Infiniti) then     { ����蠥�, �᫨ ���� ��� ��ண� }
           if a[i,j] > a[i,k] + a[k,j] then a[i,j]:=a[i,k] + a[k,j];
end;

procedure OutputData;
begin
    Assign(Output,'Output.txt');
    ReWrite(Output);
    for i:=1 to N do
      for j:=1 to N do
        if a[i,j] = Infiniti then b[i,j]:=0
                             else
             begin
                 b[i,j]:=1;
                 for k:=1 to N do 
                   if (a[i,k] <> Infiniti) and (a[k,j] <> Infiniti) and (a[k,k] < 0) then
                      b[i,j]:=2;  { �᫨ ����� ���設��� i � j ���� - k, � ���� �� k � k ����⥫��, � ������� 横� 
                                    ����⥫쭮�� ���. � ����ﭨ� �� i � j ᪮�� 㣮��� ���� }
             end;
    for i:=1 to N do
     begin
       for j:=1 to N-1 do
         Write(b[i,j],' ');
       WriteLn(b[i,N]);
     end;
    Close(Output);
end;

begin
    InputData;
    Floid;
    OutputData;
end.
