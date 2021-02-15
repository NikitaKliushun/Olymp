Var
 N,M,P,i,j,Max,Maxn,X,Y,U : Longint;
 A,S : Array [0..251,0..251] Of Longint;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N,M,P);
  Max:=0;
  For i:=1 to P do
  Begin
   Read(X,Y);
   A[x,y]:=1;
  End;
  For i:=1 to M do
   If a[N,i]= 1 then Max:=i;
 Close(Input);
 S[1,1]:=a[1,1];
 For i:=1 to N do
  For j:=1 to M do
   S[i,j]:=s[i-1,j]+s[i,j-1]-s[i-1,j-1]+a[i,j];
  Assign(Output,'Output.txt');
  ReWrite(Output);
   For i:=1 to N do
    For j:=1 to M do
     If a[i,j]=1 then U:=U+S[i-1,M]-S[i-1,j];
   Write(U);
  Close(Output);
End.
