Var
 N,M,c,i,j,k : Longint;
 Sum,P : Int64;
 A : Array [0..32,0..32] of Longint;
 X1,Y1 : Array [1..15] of Longint;

Function Pr (x,y : Longint) : Boolean;
Var
 I,kol,kol1 : Longint;

Begin
 Pr:=True;
 For i:=1 to M do
 Begin
  x1[i]:=x and 1;
  y1[i]:=y and 1;
  x:=x shr 1;
  y:=y shr 1;
 End;
 kol:=0;
 For i:=2 to M do
  If (x1[i]=y1[i]) and (y1[i]=y1[i-1]) and (y1[i-1]=x1[i-1]) then Inc(kol);
 If kol>0 then Pr:=False;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(n,m);
 Close(Input);
 If N<M then Begin
                 c:=N;
                 N:=M;
                 M:=c;
             End;
 P:=1 shl M - 1;
 For i:=0 to P do
  a[1,i]:=1;
 For i:=2 to N do
  For j:=0 to P do
   For k:=0 to P do
    If Pr (j,k) then
     a[i,k]:=a[i,k]+a[i-1,j];
 Assign(Output,'Output.txt');
 ReWrite(Output);
  For i:=0 to P do
   Sum:=Sum+a[N,i];
  Write(Sum);
 Close(Output);
End.