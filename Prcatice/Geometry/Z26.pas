Var
  x1,y1,r1,x2,y2,r2,Min_R,Max_R : Longint;
  R : Extended;

Begin
    Assign(Input,'Input.txt');
    ReSet(Input);
     Read(x1,y1,r1,x2,y2,r2);
    Close(Input);
    R:=Sqrt(Sqr(x2-x1) + Sqr(y2-y1));
    Assign(Output,'Output.txt');
    ReWrite(Output);
     If (r1 + r2 >= r) and (r + r1 >= r2) and (r + r2 >= r1) then Write('YES')
                                                             else Write('NO');
    Close(Output);
End.
