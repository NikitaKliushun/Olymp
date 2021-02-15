Type
 List = record
         X,Y:Longint;
         S:String;
        End;

Var
 N,K,I,X,Y,M:Longint;
 A:Array[1..5000] of List;
 P:Array[1..5000] of Longint;
 R:Array[1..5000] of Longint;

Function FindSet(XX:Longint):Longint;
Begin
 If XX<>P[XX] then P[XX]:=FindSet(P[XX]);
 FindSet:=P[XX];
End;

Procedure Union(XX,YY:Longint);
Begin
 If R[XX]<R[YY] then P[XX]:=YY
                else Begin
                      P[YY]:=XX;
                      If R[XX] = R[YY] then Inc(R[XX]);
                     End;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N,K);
  For I:=1 to K do
   ReadLn(A[I].X,A[I].Y,A[I].S);
 Close(Input);
 For I:=1 to N do
  P[I]:=I;
 I:=0;
 M:=N;
 While M>1 do
 Begin
  Inc(I);
  If FindSet(A[I].X)<>FindSet(A[I].Y) then Begin
                                            Union(FindSet(A[I].X),FindSet(A[I].Y));
                                            Dec(M);
                                           End;
 End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Delete(A[I].S,1,1);
  WriteLn(A[I].S);
 Close(Output);
End.

