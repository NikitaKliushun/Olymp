Var
 N,I,J,K,H:Longint;
 A:Array[1..50001] of Longint;
 D:Array[1..50001] of Longint;
 P:Array[1..50001] of Longint;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N);
  For I:=1 to N do
  Begin
   Read(A[I]);
  End;
 Close(Input);
 K:=0;
 For I:=1 to N do
  For J:=I downto 1 do
   If (A[J]<A[I]) and (D[J]+1>D[I]) then Begin
                                          D[I]:=D[J]+1;
                                          If D[I]>K then begin
                                                          K:=D[I];
                                                          H:=I;
                                                         end;
                                          P[I]:=J;

                                         End;
 Assign(Output,'Output.txt');
 ReWrite(Output);
 FillChar(D,Sizeof(D),0);
 I:=1;
 WriteLn(K);
 D[I]:=A[H];
 H:=P[H];
 While H>0 do
 Begin
  Inc(I);
  D[I]:=A[H];
  H:=P[H];
 End;
 For J:=I downto 1 do
  Write(D[J],' ');
 Close(Output);
End.



