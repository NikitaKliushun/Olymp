//Uses Windows;
Var
 A,B,M,x,i : Int64;

Function Step (x,s,c : Int64) : Int64;
Var
 Res : Int64;

Begin
{ st:=a;
 For i:=2 to s do
 Begin
  st1:=((st mod c)*(a mod c)) mod c;
  st:=st1;
 End;
 Step:=st;}
 Res:=1;
 While S>0 do
 Begin
  If S and 1 = 1 then Res:=((Res mod c)*(x mod c)) mod c;
  x:=((x mod c) * (x mod c)) mod c;
  S:=S shr 1;
 End;
 Step:=Res;
End;

Function Ost (a,b,c : Int64 ) : Int64;
Begin
 Ost:=(a+b) mod c;
End;

Begin
// x:=GetTickCount;
 Assign(Input,'Input.txt');
 ReSet(Input);
  Read(a,b,m);
 Close(Input);
 Assign(Output,'Output.txt');
 ReWrite(Output);
  i:=1;
  While i<=m do
  Begin
   If Ost(Step(a,i,i),Step(b,i,i),i) = 0 then WriteLn(i);
   Inc(i);
  End;
//  Write(GetTickCount-x);
 Close(Output);
End.


