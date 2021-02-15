{Клюшун Никита Сергеевич, г. Березино, Средняя школа №3}

Var
  X,V1,V2,T1,T2,Time,C1,C2,i,j : Longint;

Function Max (x,y : Longint) : Longint;
begin
    if x > y then Max:=x
             else Max:=y;
end;

Function Min (x,y : Longint) : Longint;
begin
    if x < y then Min:=x
             else Min:=y;
end;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(X,V1,T1,V2,T2);
    Close(Input);
    Time:=maxlongint;
    C1:=(X div V1) + (X mod V1); C2:=(X div V2) + (X mod V2);
    For i:=0 to C1 do
     For j:=0 to C2 do
      if ((i <> 0) and (j <>0))
         or ((i = 0) and (j <> 0))
          or ((i <> 0) and (j = 0)) then
         If ((i * V1) + (j * V2) >= X) then
            Time:=Min(Max(i * T1 + (i-1) * T1,j * T2 + (j-1) * T2),Time);
    Assign(Output,'Output.txt');
    ReWrite(Output);
     Write(Time);
    Close(Output);
End.
