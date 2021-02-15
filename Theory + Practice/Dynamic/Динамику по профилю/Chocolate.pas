Var
 N,i,j,k,Sum : Longint;
 A : Array [0..4,0..7] of Longint;
 X1,Y1 : Array [1..3] of Longint;

Function P (x,y : Longint) : Boolean;
Var
 I,kol,kol1 : Longint;

Begin
 P:=True;
 For i:=1 to 3 do
 Begin
  x1[i]:=x and 1;
  y1[i]:=y and 1;
  x:=x shr 1;
  y:=y shr 1;
 End;
 Kol:=0;
 For i:=2 to 3 do
  If (y1[i]=0) and (y1[i-1]=0) and (x1[i]=0) and (x1[i-1]=0) then Inc(kol,2)
                             else If (y1[i]=1) and (x1[i]=1) then P:=False;
 If Kol<>2 then P:=False;
 If (j=0) and (k=7) then P:=True;
End;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(n);
 Close(Input);
 a[0,0]:=1;
 For i:=1 to N do
  For j:=0 to 7 do
   For k:=0 to 7 do
    If P (j,k) then
     a[i,k]:=a[i,k]+a[i-1,j];
 Assign(Output,'Output.txt');
 ReWrite(Output);
  For i:=0 to 7 do
   Sum:=Sum+a[N,i];
  Write(Sum);
 Close(Output);
End.