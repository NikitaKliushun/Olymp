const
    MaxN           =         100001;
var
    pr             :         array [1..MaxN] of LongInt;
    St             :         array [1..MaxN] of Char;
    S,T            :         AnsiString;
    D,i,N,L,R,j,k  :         LongInt;

procedure Prefix (SS : AnsiString);
var
    A : LongInt;
begin
    FillChar(N,SizeOf(N),0);
    k:=0;
    pr[1]:=0;
    A:=Length(SS);
    for j:=2 to A do
      begin
          while (k <> 0) and (SS[k+1] <> SS[j]) do
            k:=pr[k];
          if SS[k+1] = SS[j] then Inc(k);
          pr[j]:=k;
      end;
end;

function Kmp (L1,R1 : LongInt; SS : AnsiString) : Boolean;
var
    F : LongInt;
begin
    Kmp:=False;
    F:=Length(SS);
    k:=0;
    for j:=L1 to R1 do
      begin
          while (k <> 0) and (SS[k+1] <> St[j]) do
            k:=pr[k];
          if SS[k+1] = St[j] then Inc(k);
          if F = k then begin
                            Kmp:=True;
                            Exit;
                        end;
      end;
end;

procedure InputData;
begin
    Assign(Input,'Substring.in');
    ReSet(Input);
    Assign(Output,'Substring.out');
    ReWrite(Output);
    ReadLn(S);
    D:=Length(S);
    for i:=1 to D do
      St[i]:=S[i];
    ReadLn(N);
    for i:=1 to N do
      begin
          ReadLn(L,R,T);
          Delete(T,1,1);
          Prefix(T);
          if Kmp(L,R,T) then Write('+')
                        else Write('-');
      end;
    Close(Input);
    Close(Output);
end;

begin
    InputData;
end.