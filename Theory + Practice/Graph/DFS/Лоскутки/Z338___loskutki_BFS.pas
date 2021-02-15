Type
 Mas = record
        X:Longint;
        Y:Longint;
       End;
Const
 Dx:Array[1..4] of Longint =(-1,0,1,0);
 Dy:Array[1..4] of Longint =(0,1,0,-1);

Var
 N,MM,I,J,Kol,X1,Y1,Last,First,XX,YY,II,JJ:Longint;
 A:Array[1..100,1..100] of Longint;
 M:Array[1..40000] of Mas;

Procedure BFS(X,Y:Longint);
Begin
 Inc(Last);
 M[Last].X:=X;
 M[Last].Y:=Y;
 While First<Last do
 Begin
  Inc(First);
  XX:=M[First].X;
  YY:=M[First].Y;
  A[XX,YY]:=1;
  For II:=1 to 4 do
    If (XX+Dx[II]<=N) and (YY+Dy[II]<=MM) and (XX+Dx[II]>0) and (YY+Dy[II]>0) then
     If A[XX+Dx[II],YY+Dy[II]]=0 then Begin
                                       Inc(Last);
                                       M[Last].X:=XX+Dx[II];
                                       M[Last].Y:=YY+Dy[II];
                                       A[XX+Dx[II],YY+Dy[II]]:=1;
                                      end;
 End;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N,MM);
  For I:=1 to N do
   For J:=1 to MM do
    Read(A[I,J]);
 Close(Input);
 For I:=1 to N do
  For J:=1 to MM do
   If A[I,J]=0 then Begin
                     First:=0;
                     Last:=0;
                     Inc(Kol);
                     BFS(I,J);
                    End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(Kol);
 Close(Output);
End.

