Var
 N,i,j,ii : Longint;
 a,St : Array [0..1000] of Longint;

Begin
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N);
 Close(Input);
 st[0]:=1;
 i:=0;
 while St[i] <= N do
 begin
  Inc(i);
  st[i]:=1;
  For j:=1 to i do
   st[i]:=st[i]*2;
 end;
 ii:=i-1;
 a[0]:=1;
 for i:=1 to N do
  a[i]:=1;
 For i:=1 to ii do
  For j:=st[i] to N do
      a[j]:=a[j-st[i]]+a[j];
 Assign(Output,'Output.txt');
 ReWrite(Output);
  Write(a[n]);
 Close(Output);
End.
