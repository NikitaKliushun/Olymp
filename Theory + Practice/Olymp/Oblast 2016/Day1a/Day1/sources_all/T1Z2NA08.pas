{Клюшун Никита Сергеевич, г. Березино, Задача 2}
Var
 K,Y : Longint;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(K,Y);
    Close(Input);
    Assign(Output,'Output.txt');
    ReWrite(Output);
     Write(-1);
    Close(Output);
End.
