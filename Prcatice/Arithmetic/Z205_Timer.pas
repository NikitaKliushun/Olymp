Var
 Time1,Time2,Time3,D,H,M,S : Int64;
 S1,S2 : String;

Function Transform (S : String) : Int64;
Var
  L,ind,Time,Time1 : Int64;
  i,cod : Longint;
  S1 : String;

Begin
    i:=Length(S); ind:=1; Time:=0;
    While i > 0 do
    begin
        S1:='';
        while (i > 0) and (s[i] <> ':') do
        begin
            S1:=S[i] + S1;
            Dec(i);
        end;
        Val(S1,Time1,cod);
        Time:=Time + Time1 * ind;
        ind:=ind * 60;
        Dec(i);
    end;
    Transform:=Time;
End;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     ReadLn(S1);
     Time1:=Transform(S1);
     ReadLn(S2);
     Time2:=Transform(S2);
    Close(Input);
    Time3:=Time1 + Time2;
    D:=Time3 div 86400;
    Time3:=Time3 mod 86400;
    H:=Time3 div 3600;
    Time3:=Time3 mod 3600;
    M:=Time3 div 60;
    S:=Time3 mod 60;
    Assign(Output,'Output.txt');
    ReWrite(Output);
     if H div 10 = 0 then Write('0');
     Write(H,':');
     if M div 10 = 0 then Write('0');
     Write(M,':');
     if S div 10 = 0 then Write('0');
     Write(S);
     If D > 0 then Write('+',D,' days');
    Close(Output);
End.