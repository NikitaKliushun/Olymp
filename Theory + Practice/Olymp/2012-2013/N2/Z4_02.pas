//Uses Windows;

Var
 N,i,sum,M,x : Longint;

Begin
// x:=GetTickCount;
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(N);
 Close(Input);
 M:=Trunc(Sqrt(N));
 For i:=1 to m do
  sum:=sum+(n div i)+(n div (n div i));
 Assign(Output,'Output.txt');
 ReWrite(Output);
  WriteLn(Sum);
//  Write(GetTickCount-x);
 Close(Output);
End.

