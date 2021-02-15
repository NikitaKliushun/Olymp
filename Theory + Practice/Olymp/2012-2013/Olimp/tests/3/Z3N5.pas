{Klyshyn Nikita, School ü3, Form 8}

Var
 N,I,Max,Min,X,Kol,Maxx,J:Integer;
 A:Array[1..60000] of Byte;
 F,F1:Text;

Begin
 Assign(F,'In.txt');
 ReSet(F);
  ReadLn(F,N);
  Max:=0;
  For I:=1 to N do
  Begin
   Read(F,X);
   If A[X+1]=0 then begin
                     A[X]:=A[X-1]+1;
                     If A[X]>Max then Max:=A[X];
                    End
                else begin
                      J:=X;
                      While A[J]>0 do
                      Begin
                       A[J]:=A[J-1]+1;
                       If A[J]>Max then Max:=A[J];
                       Inc(J);
                      End;
                     End;
  End;
 Close(F);
 Assign(F1,'Out.txt');
 ReWrite(F1);
  Write(F1,Max);
 Close(F1);
End.

