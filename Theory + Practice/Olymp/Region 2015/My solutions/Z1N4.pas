{Клюшун Никита Сергеевич, г. Берeзино, Средняя школа №3}

Var
 L,L1,L2,x1,x2,cod,i : Longint;
 S,S1,S2 : String;

Procedure Revers (Var S : String; L : Longint);
Var
  i : Longint;
  c : Char;

Begin
    For i:=1 to L div 2 do
    begin
        c:=s[i];
        s[i]:=s[L-i+1];
        s[L-i+1]:=c;
    end;
End;

Procedure Zero (Var S : String);
Begin
   i:=1;
   While s[i] = '0' do
    Inc(i);
   Delete(s,1,i-1);
End;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     ReadLn(S);
    Close(Input);
    L:=Length(S);
    i:=1;
    While  s[i] <> ' ' do
    begin
        s1:=s1 + s[i];
        Inc(i);
    end;
    Inc(i);
    While i <= L do
    begin
     s2:=s2 + s[i];
     Inc(i);
    end;
    L1:=Length(S1); L2:=Length(S2);
    ReVers(S1,L1);
    Revers(S2,L2);
    Zero(S1); Zero(S2);
    Val(S1,x1,cod); Val(S2,x2,cod);
    Assign(Output,'Output.txt');
    ReWrite(Output);
     If x1 < x2 then WriteLn(S1)
                else WriteLn(S2);
    Close(Output);
End.