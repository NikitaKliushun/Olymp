Var
 N,K,Sum,i,j,j1 : Longint;
 A : Array [0..100,0..10000] of Longint;
 B : Array [1..100] of Longint;

Function Min (x,y : Longint) : Longint;

Begin
 If x<y then Min:=x
        else Min:=y;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N,K);
  For i:=1 to N do
  Begin
   Read(b[i]);
   Sum:=Sum+b[i];
  End;
 Close(Input);
 For i:=0 to N do
  For j:=0 to K do
   a[i,j]:=111111111;
 a[0,0]:=0;
 For i:=1 to N do
  For j:=Sum downto 1 do
   For j1:=1 to K do
    If (i-j1>=0) and (J-b[i]>=0) then a[i,j]:=Min(a[i-j1,j-b[i]]+1,a[i,j]);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  For i:=1 to N do
   If a[i,K]<>111111111 then Begin
                                 Write(a[i,K]);
                                 Break;
                             End;
 Close(Output);
End.