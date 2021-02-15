Var
 N,I,J,K,P :Longint;
 A:Array[1..200] of Longint;
 M:Array[1..200,1..200] of Longint;

Function Min(X,Y:Longint):Longint;
Begin
 If X>Y then Min:=Y
        else Min:=X;
End;

Begin
 Assign(Input,'Email.dat');
 ReSet(Input);
  Read(N);
  For I:=1 to N do
   Read(A[I]);
 Close(Input);
 For I:=1 to N do
  M[I,I]:=1;
 For K:=1 to N-1 do
  For I:=1 to N-K do
   For J:=I+K to I+K do
   Begin
    If A[J]=A[J-1] then M[I,J]:=M[I,J-1]
                   else M[I,J]:=M[I,J-1]+1;
    For P:=J downto I do
     If A[P]=A[J] then M[I,J]:=Min(M[I,J],M[I,P]+M[P+1,J-1]);
   End;
 Assign(Output,'Email.sol');
 ReWrite(Output);
  Write(M[1,N]);
 Close(Output);
End.

