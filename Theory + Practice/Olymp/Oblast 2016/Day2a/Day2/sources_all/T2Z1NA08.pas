{Kliushun Nikita Sergeevich, Berezino, Task 1}

Var
 M,W,i,j,s,b,t,day,Ans : Longint;
 D : Array [1..100000] of Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(M,W);
     For i:=1 to M do
      Read(d[i]);
     Read(s,b,t);
    Close(Input);
    day:=s;
    For i:=1 to M do
    begin
        for j:=1 to d[i] do
        begin
            if (day = b) and (j = t) then Inc(Ans);
            Inc(day);
            if day mod w > 0 then day:=day mod w;
        end;
    end;
    Assign(Output,'Output.txt');
    ReWrite(Output);
     Write(Ans);
    Close(Output);
End.