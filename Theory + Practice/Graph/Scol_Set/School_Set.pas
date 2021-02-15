Type
 TList = ^List;
 List = record
         V:Longint;
         Next:TList;
        End;
Var
 N,I,J,Kol,X,Y,Koll,Kol1,XX,Min,Ans,Max:Longint;
 Q:TList;
 F:Boolean;
 A:Array[1..100000] of TList;
 M,M1:Array[1..100000] of Longint;

Procedure In_List(T1,T2:Longint);
Begin
 New(Q);
 Q^.V:=T2;
 Q^.Next:=A[T1];
 A[T1]:=Q;
End;

Procedure DFS(X:Longint);
Var
 P:TList;
 Y:Longint;

Begin
 P:=A[X];
 While P<>Nil do
 Begin
  Y:=P^.V;
  If M[Y]=0 then Begin
                   Inc(Kol);
                   M[Y]:=Kol;
                   DFS(Y);
                 End;
  P:=P^.Next;
 End;
End;

Procedure Prov(X1:Longint);
Var
 P1:TList;
 Y1:Longint;

Begin
 P1:=A[X1];
 While P1<>Nil do
 Begin
  Y1:=P1^.V;
  If M1[Y1]=0 then Begin
                   Inc(Kol);
                   M1[Y1]:=Kol;
                   Prov(Y1);
                  End;
  P1:=P1^.Next;
 End;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  ReadLn(N);
  For I:=1 to N do
   Repeat
    Read(XX);
    If XX>0 then 
		  In_List(I,XX);
   Until XX=0;
 Close(Input);
 For I:=1 to N do
  If M1[I]=0 then Begin
                   Prov(I);
                  End;
 F:=False;
 For I:=1 to N do
  If M1[I]=0 then Begin
  	           F:=True;
		   Break;	
		  End
             else If M1[I]>Max then Max:=M1[I];
 Assign(Output,'Output.txt');
 ReWrite(Output);
 If F then Begin
 Kol:=0;
 For I:=1 to N do
  If (M[I]=0) and (M1[I]=0) then Begin
                                  Inc(Kol);
                                  M[I]:=Kol;
                                  DFS(I);
                                 End;
 End
 Else Begin
       WriteLn(Max);
       Halt;
      End;
 Write(Kol);
 Close(Output);
 {FillChar(M,Sizeof(M),0);
 Min:=100000;
 For I:=1 to N do
 Begin
  Prov(I);
  FillChar(M,Sizeof(M),0);
  If N-Kol1<Min then Min:=N-Kol1;
 End;       
  WriteLn(Min);}
End.
