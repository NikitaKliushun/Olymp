{Klyshyn Nikita, School ü3, Form 8}

Var
 N,I,Max,Min,X,Kol,Maxx:Word;
 A:Array[1..60000] of Byte;

Begin
 Assign(Input,'In.txt');
 ReSet(Input);
  ReadLn(N);
  Max:=0;
  For I:=1 to N do
  Begin
   Read(X);
   If A[X+1]=0 then begin
                     A[X]:=A[X-1]+1;
                     If A[X]>Max then Max:=A[X];
                    End
                else begin
                      J:=I;
                      While A[J]>0 do
                      Begin
                       A[J]:=A[J-1]+1;
                       If A[J]>Max then Max:=A[J];
                       Inc(J);
                      End;
                     End;
  End;
 Close(Input);
 Assign(Output,'Out.txt');
 ReWrite(Output);
  Write(Max);
 Close(Output);
End.

