Uses Math;
Const
 Inf = 100000;
Var
 N,M,I,J,U,X,Y,Max:Longint;
 A:Array[1..300,1..300] of Longint;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N,M);
  For I:=1 to N do
   For J:=1 to N do
    A[I,J]:=Inf;
  For I:=1 to M do
  Begin
   ReadLn(X,Y);
   A[X,Y]:=Min(A[X,Y],0);
   A[Y,X]:=Min(A[Y,X],1);
  End;
 Close(Input);
 For I:=1 to N do
  For J:=1 to N do
   For U:=1 to N do
    If A[J,I]+A[I,U]<A[J,U] then A[J,U]:=A[J,I]+A[I,U];
 Max:=0;
 For I:=1 to N do
  For J:=1 to N do
   If A[I,J]>Max then Max:=A[I,J];
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(Max);
 Close(Output);
End.

