Var
  L,i : Longint;
  S1,S2 : String;

Function M (x,y : Char) : Longint;
Var
  L_x,R_x,L_y,R_y : Longint;
Begin
    if x in ['0'..'9'] then begin Val(x,L_x,cod); Val(x,R_x,cod); end;
    If x = '?' then begin L_x:=0; R_x:=9; end;
    if x in ['a'..'g'] then begin L_x:=Ord(x)-Ord('a'); R_x:=L_x+4 end;
    if y in ['0'..'9'] then begin Val(y,L_y,cod); Val(y,R_y,cod); end;
    If y = '?' then begin L_y:=0; R_y:=9; end;
    if y in ['a'..'g'] then begin L_y:=Ord(y)-Ord('a'); R_y:=L_y+4 end;
End;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     ReadLn(S1,S2);
    Close(Input);
    L:=Length(S1); Ans:=1;
    For i:=1 to L do
     Ans:=Ans*M(S1[i],S2[i]);
    Assign(Output,'Output.txt');
    ReWrite(Output);
     Write(Ans);
    Close(Output);
End.