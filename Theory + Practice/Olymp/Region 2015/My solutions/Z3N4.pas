{Клюшун Никита Сергеевич, г. Березино, Средняя школа №3}

Var
 N,K,i,x,Max : Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(N);
     Max:=0; K:=0;
     For i:=1 to N do
     begin
      Read(x);
      if x - Max > 0 then Inc(K);
      if x > Max then Max:=x;
     end;
    Close(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
     Write(K);
    Close(Output);
End.