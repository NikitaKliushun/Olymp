Var
 N,M,K,A,B,I,Bn,Right,Left,Md,S:Longint;
 D:Array[1..365] of Longint;

Function Target(Karl:Longint):String;
Begin
 Bn:=0;
 Target:='Min';
 S:=Karl*M;
 For I:=1 to 364 do
 Begin
  If S<D[I] then If Bn+(D[I]-S)<=Karl*N then Bn:=Bn+(D[I]-S)
                                        else Exit;
  If Bn>Karl*N then Exit;
 End;
 Target:='Many';
End;

Procedure Dich;
Begin
 While Right-Left>1 do
 Begin
  Md:=(Right+Left) div 2;
  If Target(Md)='Many' then Right:=Md
                       else Left:=Md;
 End;
End;

Begin
 Assign(Input,'Birthday.in');
 ReSet(Input);
  Read(M,N);
  Read(K);
  For I:=1 to K do
  Begin
   Read(A,B);
   Inc(D[A],B);
  End;
 Close(Input);
 Left:=0;
 Right:=100000;
 Dich;
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(Right);
 Close(Output);
End.
