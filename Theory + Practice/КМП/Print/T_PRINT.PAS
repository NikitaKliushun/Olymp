
{ Задача  : "Print"           }
{ Тема    : Алгоритм КМП      }
{ Решение : Чернушевич Игорь  }

program Task;
const
    MaxD               =           5001;
var
    S,A                :           AnsiString;
    L1,L2,i,k,j,Kol    :           LongInt;
    p                  :           array [1..MaxD] of LongInt;
    M                  :           array [1..MaxD] of AnsiString;

procedure InputData;
begin
    Assign(Input,'Print.in');
    ReSet(Input);
    ReadLn(S);
    Close(Input);
    Assign(Output,'Print.out');
    ReWrite(Output);
end;

procedure Sol;
begin
    L2:=Length(S);
    if L2 > 0 then begin Inc(Kol); M[1]:=S[1]; end;
    if L2 > 1 then begin Inc(Kol); M[2]:=S[2]; end;
    L1:=2;
    A:=S; Delete(A,1,2);
    while L1 < L2 do
       begin
           FillChar(p,SizeOf(p),0);
           k:=0; p[1]:=0;
           for j:=2 to Length(A) do
             begin
                 while (k <> 0) and (A[k+1] <> A[j]) do
                     k:=p[k];
                 if A[k+1] = A[j] then Inc(k);
                 p[j]:=k;
       end;
           k:=0;
           for i:=1 to L1 do
             begin
                 while (k <> 0)  and (A[k+1] <> S[i]) do
                     k:=p[k];
                 if A[k+1] = S[i] then Inc(k);
             end;
           if k > 1 then begin
                             Inc(Kol);
                             M[Kol]:=Copy(A,1,k);
                             Delete(A,1,k);
                             Inc(L1,k);
                         end
                    else begin
                             Inc(Kol);
                             M[Kol]:=A[1];
                             Delete(A,1,1);
                             Inc(L1);
                         end;
       end;
end;

begin
    InputData;
    Sol;
    WriteLn(Kol+1);
    for i:=1 to Kol do
      if Length(M[i]) > 1 then WriteLn('Repeat(',Length(M[i]),');')
                          else WriteLn('Letter(''',M[i],''');');
    WriteLn('End.');
    Close(Output);
end.