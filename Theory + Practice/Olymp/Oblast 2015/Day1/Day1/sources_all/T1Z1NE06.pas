Var
  N,K,M,x,i,j: Longint;
  B,Ans : Array [1..100] of Longint;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Read(N,K);
  For i:=1 to N do
  begin
      Read(x);
      Inc(B[x]);
  End;
  M:=0;
  For i:=1 to 100 do
   Inc(M,b[i] div K);
 WriteLn(M);
 For i:=1 to 100 do
  For j:=1 to b[i] div K do
   Write(i,' ');
 Close(Input);
 Close(Output);
End.